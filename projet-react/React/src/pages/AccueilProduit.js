import React, {useContext, useEffect, useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import {Link} from "react-router-dom";
import AuthenticationContext from "../config/credentialsContext";
import Credentials from "../services/Credentials";

const AccueilProduit = () => {
    const [produits, setProduits] = useState([]);
    const [role, setRole] = useState([]);

    const fetchProduits = async () => {
        try {
            const _produits = await AfterWorkAPI.getAllProduits()
            //console.log(_produits)
            setProduits(_produits)
        } catch (error) {
            //console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchProduits();
    }, [])

    const [categories, setCategories] = useState([]);
    const [produitCateg, setProduitCateg] = useState([]);
    const {isAuthenticated} = useContext(AuthenticationContext);

    const fetchCategories = async () => {
        try {
            const _categories = await AfterWorkAPI.getAllCategorie()
            //console.log(_categories)
            setCategories(_categories)
        } catch (error) {
            //console.log('erreur : ' + error)
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

    const handleAfficherCateg = (e) => {
        var valueCateg = e.target.value
        // eslint-disable-next-line array-callback-return
        setProduitCateg(produits.map(produit => {
            if (valueCateg == produit.idCategorie["idCategorie"] || valueCateg == 'all') {
                if ((produit["activation"] === true && produit.idCategorie.activation === true) || (role === 1 && isAuthenticated)) {
                    return <div className="col-sm-6 text-center" key={produit.idProduit}>
                        <div className="card shadow-lg p-3 mb-4 bg-body rounded ">
                            <div className="card-body">
                                {(produit["activation"] === false && (
                                    <h5 className="color-warning">inactif</h5>
                                ))}
                                <img className="imageBoutique"
                                     src="https://cdn-icons-png.flaticon.com/512/1257/1257201.png?w=826"
                                     alt="le produit"/>
                                <h5 className="card-title mt-3">{produit.libelleProduit}</h5>
                                <div className="d-grid gap-2 d-md-block">
                                    <Link to={`/produits/details/${produit.idProduit}`}
                                          className="btn btn-light rounded m-2">Aperçu</Link>
                                    {((role === 1 && isAuthenticated) && (
                                        <Link to={`/modifier/produit/${produit.idProduit}`}
                                              className="btn btn-warning rounded">Modifier</Link>
                                    ))}
                                </div>
                            </div>
                        </div>
                    </div>
                }
            }
        }))
    }
    return (
        <>
            <header className="banner" role="banner">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="banniere"></div>
                    </div>
                    <h1 className="text-center mt-5">Toute la gamme de produits</h1>
                </div>
            </header>
            <div className="container mt-4 text-center">
                    <div className="col-sm-12">
                        <div className="btn-group mt-3 text-center mx-auto">
                            <Link type="button" className="categ boutonpage btn border border-dark text-dark" to="/categories">Voir toutes les catégories</Link>
                            <button type="button" className="categ boutonpage btn border border-dark text-dark dropdown-toggle dropdown-toggle-split"
                                    data-bs-toggle="dropdown" aria-expanded="false">Trier par catégorie
                            </button>

                            <ul className="dropdown-menu">
                                {/* eslint-disable-next-line array-callback-return */}
                                {categories.map(categorie => {
                                    if (categorie.activation === true || (role === 1 && isAuthenticated)) {
                                        return <li key={categorie.idCategorie}>
                                            <button className="dropdown-item"
                                                    value={categorie.idCategorie}
                                                    onClick={handleAfficherCateg}>{categorie.libelleCategorie}</button>
                                        </li>
                                    }
                                })}
                                <li>
                                    <hr className="dropdown-divider"/>
                                </li>
                                <li>
                                    <button className="dropdown-item" value="all" onClick={handleAfficherCateg}>Toutes
                                    </button>
                                </li>
                            </ul>
                        </div>
                        {((role === 1 && isAuthenticated) && (
                            <div className="mt-3">
                            <Link className="boutonpage btn border border-dark text-dark" to={`ajouter/produit`}>Ajouter un
                                produit</Link>
                            </div>
                        ))}
                    </div>
                    <div className="col-12">
                        <div className="row">
                            {produitCateg}
                        </div>
                    </div>
                </div>
        </>
    )
}

export default AccueilProduit;

//<img className="banniere" src="https://images.squarespace-cdn.com/content/v1/5ad8575e8f513097d5c2f88d/1546260487736-LO90J0KRY3S4KUTAX6ZP/banniere-cafe.jpg?format=2500w" alt=""/>