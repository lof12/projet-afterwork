import React, {useContext, useEffect, useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import {Link} from "react-router-dom";
import AuthenticationContext from "../config/credentialsContext";
import Credentials from "../services/Credentials";

const AccueilCategorie = () => {
    const [categories, setCategories] = useState([]);
    const [role, setRole] = useState([]);
    const isAuthenticated = useContext(AuthenticationContext);

    const fetchCategories = async () => {
        try {
            const _categories = await AfterWorkAPI.getAllCategorie()
            //console.log(_categories)
            setCategories(_categories)
        } catch (error) {
            //console.log(error)
        }
    }

    useEffect(() => {
        fetchCategories();
    }, [])


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


    return (
        <>
            <header className="banner" role="banner">
                <div className="container">
                    <div className="row">
                            <div className="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="banniere"></div>
                    </div>
                    <h1 className="text-center mt-5 mb-5">Toutes les catégories</h1>
                </div>
            </header>

            {((role === 1 || (role === 2)) && isAuthenticated && (
                <div className="text-center">
                    <Link className="mt-5 btn border border-dark text-dark boutonpage" to={`ajouter/categorie`}>Ajouter une
                        catégorie</Link>
                </div>
            ))}

            {categories.map(categorie => {
                return <div className="row">
                    <div className="col-sm-6 mx-auto mt-4">
                <div key={categorie.idCategorie} className="card">
                    <div className="card-body mx-auto col-sm-8">
                        {(categorie.activation === 0 && (<h5>inactif</h5>))}
                        <div className="card-header">{categorie.libelleCategorie}</div>
                        {categorie.descriptionCategorie &&
                            <p className="card-text">Description
                                : {categorie.descriptionCategorie}
                            </p>
                        }
                    </div>
                </div>
                    </div>
            </div>
            })}
        </>
    )
}

export default AccueilCategorie;