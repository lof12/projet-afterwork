import React, {useContext, useEffect, useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import {Link} from "react-router-dom";
import AuthenticationContext from "../config/credentialsContext";
import Credentials from "../services/Credentials";

const AccueilRubriques = () => {
    const [rubriques, setRubriques] = useState([]);
    const [role, setRole] = useState([]);
    const isAuthenticated = useContext(AuthenticationContext);

    const fetchRubriques = async () => {
        try {
            const _rubriques = await AfterWorkAPI.getAllRubriques()
            //console.log(_rubriques)
            setRubriques(_rubriques)
        } catch (error) {
            //console.log(error)
        }
    }

    useEffect(() => {
        fetchRubriques();
    }, [])


    const fetchRole = async () => {
        try {
            const token = Credentials.getPayload()
            //console.log(token)
            const _role = await Credentials.getIdRole(token["id_employe"])
            setRole(_role)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchRole();
    }, [])

    const SupprimerRubrique = (e) => {
        var IdRubrique = e.target.value
        AfterWorkAPI.DeleteRubrique(IdRubrique)
    }

    return (
        <>
            <header className="banner" role="banner">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="banniere"></div>
                    </div>
                    <h1 className="text-center mt-5">Toutes les rubriques</h1>
                </div>
            </header>

            {rubriques.map(rubrique => {
                return <div className="row">
                    <div className="col-sm-6 mx-auto mt-5">
                        <div key={rubrique.titre} className="card">
                    <div className="card-body mx-auto col-sm-8">
                        <h5 className="card-header">{rubrique.titre}</h5>
                        {((role === 1 || (role === 4)) && isAuthenticated && (
                            <button className="btn btn-warning position-absolute top-0 end-0"
                                    value={rubrique.idRubrique}
                                    onClick={SupprimerRubrique}>Supprimer
                            </button>
                        ))}
                        {(rubrique.description && (
                            <p className="card-text"><b className="fs-5">Description
                                : </b>{rubrique.description}</p>
                        ))}
                    </div>
                </div>
                    </div>
            </div>
            })}
        </>
    )
}

export default AccueilRubriques;