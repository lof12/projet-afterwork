import React, {useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";

const AjouterRubriques = () => {

    const [titre, setTitre] = useState("");
    const [description, setDescrption] = useState("");

    const handleSubmit = async e => {
        e.preventDefault()
        await AfterWorkAPI.InsertRubrique(titre, description)
        document.location.href = "http://localhost:3000/rubriques";
    }

    return (
        <div className="container formulaire">
            <h1>Ajouter une rubrique</h1>
            <form onSubmit={handleSubmit} method="post" className="me-5 mt-5 ms-5">
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="titre"
                           placeholder="Titre de la rubrique"
                           value={titre}
                           onChange={e => setTitre(e.target.value)}/>
                </div>

                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="description"
                           placeholder="Contenu de la rubrique"
                           value={description}
                           onChange={e => setDescrption(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <button name="submit" className="btn btn-primary form-control">Ajouter</button>
                </div>
            </form>
        </div>
    )
}

export default AjouterRubriques;