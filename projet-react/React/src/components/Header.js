import React, {useContext, useEffect, useState} from 'react';
import {Link} from "react-router-dom";
import AuthenticationContext from "../config/credentialsContext";
import AfterWorkAPI from "../services/AfterWorkAPI";
import Credentials from "../services/Credentials";


const Header = () => {

    const {isAuthenticated, setIsAuthenticated} = useContext(AuthenticationContext);
    const [rubriques, setRubriques] = useState([]);
    const [client, setClient] = useState([]);
    const [role, setRole] = useState([]);

    const fetchRubriques = async () => {
        try {
            const _rubriques = await AfterWorkAPI.getAllRubriques()
            //console.log(_rubriques)
            setRubriques(_rubriques)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchRubriques();
    }, [])

    const fetchClients = async () => {
        try {
            const token = Credentials.getPayload()
            const idClient = token["id_client"]
            //console.log(idClient)
            const _client = await Credentials.getInfoClient(idClient)
            //console.log(_client)
            setClient(_client)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchClients();
    }, [])

    const handleLogOut = () => {
        Credentials.logOut()
        setIsAuthenticated(false);    // setIsAuthenticated(false)

    }

    const fetchRole = async () => {
        let _role = ''
        const token = await Credentials.getPayload()
        if (token["client"] === false) {
            _role = await Credentials.getIdRoleEmploye(token["id_employe"])
        }
        if (token["client"] === true) {
            _role = await Credentials.getIdRoleClient(token["id_client"])
        }
        setRole(_role)
    }
    useEffect(() => {
        fetchRole();
    }, [])

    const UpdateNewsLetter = () => {
        const token = Credentials.getPayload()
        AfterWorkAPI.modifNewsLetter(token["id_client"])
        window.location.reload();
    }

    return (
        <>
                <nav className="navbar navbar-light">

                        <img src="https://s.tmimgcdn.com/scr/800x500/177500/cafe-sup-logo-sur-fond-noir-modele-de-logo_177553-original.jpg" width="600" alt="logo"></img>
                    <ul className="navbar-nav">
                        <li className="nav justify-content-center">
                            <Link to={"/"}><h1 style={{color:"#ed8a20"}}>AFTERWORK</h1></Link>
                        </li>
                    </ul>
                    <div className="btn-group mx-auto me-5">

                        <div className="btn-group">
                            <Link type="button" className="btn btn-light text-dark " to="/rubriques">Rubriques</Link>
                            <button type="button" className="btn border dropdown-toggle dropdown-toggle-split me-5 "
                                    data-bs-toggle="dropdown" aria-expanded="false">
                            </button>
                            <ul className="dropdown-menu">
                                {rubriques.map(rubrique => {
                                    return <li key={rubrique.idRubrique}>
                                        <a className="dropdown-item"
                                           href={`/articles/${rubrique.idRubrique}`}>{rubrique.titre}</a>
                                    </li>
                                })}
                                {(((role === 4 || role === 1) && isAuthenticated) && (
                                    <>
                                        <li>
                                            <hr className="dropdown-divider"/>
                                        </li>
                                        <li>
                                            <Link className="dropdown-item" value="all" to={`/ajouter/rubrique`}>Ajouter une rubrique
                                            </Link>
                                        </li>
                                    </>
                                ))}
                            </ul>
                        </div>
                        <ul className="nav nav-tabs mt-1">
                            {(!isAuthenticated && (
                                <>
                                    <li>
                                        <Link className="btn btn-primary me-4 rounded" to="/inscription">Inscription</Link>
                                    </li>
                                </>
                            )) || (
                                <li>
                                    <button onClick={handleLogOut} className="btn btn-warning me-2 rounded" to="/">Déconnexion
                                    </button>
                                </li>
                            )}
                            {(((role === 3 && isAuthenticated) && client[0]["abonnementNewsletter"] === true) && (
                                <input type="image" alt="abonnement newsletter" src="https://cdn-icons-png.flaticon.com/512/3879/3879860.png" height="50" onClick={UpdateNewsLetter}></input>
                            ))}
                            {(((role === 3 && isAuthenticated) && client[0]["abonnementNewsletter"] === false) && (
                                <input type="image" alt="désabonnement newsletter" src="https://cdn-icons.flaticon.com/png/512/3625/premium/3625816.png?token=exp=1652115757~hmac=5c320ccfcfdf8835bbf05269a4d63629" height="50" onClick={UpdateNewsLetter}>
                                </input>
                            ))}
                            {(!isAuthenticated && (
                                <>
                                        <li>
                                            <Link className="btn btn-warning me-2 rounded" to="/connexion">Connexion</Link>
                                        </li>
                                </>
                            ))}
                            {((role === 1) && isAuthenticated && (
                                <div>
                                    <Link type="button" className="btn btn-primary rounded" to="/administrer">Administrer</Link>
                                </div>
                            ))}
                        </ul>
                    </div>
                </nav>
        </>
    )
}

export default Header;
