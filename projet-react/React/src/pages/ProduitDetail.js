import React, {useContext, useEffect, useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import {useParams} from "react-router-dom";
import AuthenticationContext from "../config/credentialsContext";
import Credentials from "../services/Credentials";

const ProduitDetail = () => {
    const {id} = useParams();
    const {isAuthenticated} = useContext(AuthenticationContext);

    const [idUser, setIdUser] = useState([]);
    const [produit, setProduit] = useState([]);
    const [commmentaires, setCommmentaires] = useState([]);
    const [titre, setTitre] = useState([]);
    const [description, setDescription] = useState([]);


    const fetchProduit = async () => {
        try {
            //console.log(id)
            const _produit = await AfterWorkAPI.getDetailsProduit(id)
            setProduit(_produit)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchProduit();
    })

    const fetchGetIdClient = async () => {
        try {
            const token = Credentials.getPayload()
            const _idUser = token["id_client"]
            //console.log(_idUser)
            setIdUser(_idUser)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchGetIdClient();
    })

    const fetchCommentaires = async () => {
        try {
            const _commmentaires = await AfterWorkAPI.getCommentairesProduit(id)
            //console.log(_commmentaires)
            setCommmentaires(_commmentaires)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchCommentaires();
    })

    const handleSubmit = async e => {
        e.preventDefault()

        const dateTime = new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate() + ' ' + new Date().getHours() + ":" + new Date().getMinutes() + ":" + new Date().getSeconds()
        console.log(id, idUser, titre, description, dateTime)
        await AfterWorkAPI.InsertCommentairesProduit(id, idUser, titre, description, dateTime)
        window.location.reload();
    }

    return (
        <>
            <h1 className="text-center">Description du produit</h1>
            {produit.map(info => {
                console.log(info)
                return <div className="container mt-5">
                    <div className="row">
                        <div className="col">
                            <h5>{info.libelleProduit}</h5>
                            <p>
                                {info.descriptionProduit}
                            </p>
                            <div>
                                <b className="badge bg-secondary fs-5">Prix HT : </b> <span className="badge bg-primary fs-5"> {info.prixUnitaireHt}€</span>
                            </div>
                        </div>
                        <div className="text-center col">
                            <img className="imageBoutique"
                                 src="https://cdn-icons-png.flaticon.com/512/1257/1257201.png?w=826"
                                 alt="le produit"/>
                        </div>
                    </div>
                </div>
            })}
        </>
    )
}

export default ProduitDetail;

