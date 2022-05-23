import React, {useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import Credentials from "../services/Credentials";
import {useParams} from "react-router-dom";

const AjouterArticle = () => {

    const {id} = useParams();

    const [titre, setTitre] = useState("");
    const [contenu, setContenu] = useState("");

    const handleSubmit = async e => {
        e.preventDefault()
        await AfterWorkAPI.InsertArticle(titre, await Credentials.getPayload()["id_employe"], contenu,(new Date).toLocaleString(),id)
        document.location.href = `http://localhost:3000/articles/${id}`;
    }

    return (
        <div className="container formulaire">
            <h1 className="text-center mt-3">Publier un article</h1>
            <form onSubmit={handleSubmit} method="post" className="me-5 mt-5 ms-5">
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="titre"
                           placeholder="Titre de l'article"
                           value={titre}
                           onChange={e => setTitre(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="contenu"
                           placeholder="Contenu de l'article"
                           value={contenu}
                           onChange={e => setContenu(e.target.value)}/>
                </div>

                <div className="mb-3">
                    <button type="submit" className="btn btn-primary form-control">Publier</button>
                </div>
            </form>
        </div>
    )
}

export default AjouterArticle;