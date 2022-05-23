import React, {useContext, useEffect, useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import {Link, useParams} from "react-router-dom";
import Credentials from "../services/Credentials";
import AuthenticationContext from "../config/credentialsContext";

const Rubrique = () => {
    const {idRubrique} = useParams();

    const [articles, setArticles] = useState([]);
    const [rubrique, setRubrique] = useState([]);
    const [role, setRole] = useState([]);
    const isAuthenticated = useContext(AuthenticationContext);

    const fetchArticles = async () => {
        try {
            const _articles = await AfterWorkAPI.getArticlesByRubrique(idRubrique)
            //console.log(_articles)
            setArticles(_articles)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchArticles();
    })

    const fetchRubrique = async () => {
        try {
            const _rubrique = await AfterWorkAPI.getDetailsRubrique(idRubrique)
            //console.log(_rubrique)
            setRubrique(_rubrique)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchRubrique();
    })

    const fetchRole = async () => {
        try {
            const token = Credentials.getPayload()
            //console.log(token)
            const _role = await Credentials.getIdRoleEmploye(token["id_employe"])
            setRole(_role)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchRole();
    }, [])

    const SupprimerArticle = (e) => {
        var idArticle = e.target.value
        AfterWorkAPI.DeleteArticle(idArticle)
        window.location.reload();
    }

    return (
        <div>
            <h1 className="text-center mt-3">Les Articles de la rubrique "<b>{rubrique.titre}</b>"</h1>

            <div className="row">
                {articles.map(article => {
                    return <div className="col-sm-6 mx-auto" key={article.idArticle}>
                        <div className="card mx-2">
                            <div className="card-body">
                                <h5 className="card-header">{article.titre}</h5>
                                <p className="card-text">{article.contenu}</p>
                                <p>{article.date}</p>
                                {((role == 1 || (role == 4)) && isAuthenticated && (
                                    <button className="text-center btn btn-warning"
                                            value={article.idArticle}
                                            onClick={SupprimerArticle}>Supprimer
                                    </button>
                                ))}
                            </div>
                        </div>
                    </div>
                })}
            </div>


        </div>
    )
}
export default Rubrique;