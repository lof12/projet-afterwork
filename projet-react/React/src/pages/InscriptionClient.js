import React, {useState} from 'react';
import Credentials from "../services/Credentials";

const InscriptionClient = () => {

    const [nom, setNom] = useState("");
    const [prenom, setPrenom] = useState("");
    const [password, setPassword] = useState("");
    const [email, setEmail] = useState("");
    const [tel, setTel] = useState("");

    const handleSubmit = async e => {
        e.preventDefault()
        await Credentials.newClient(nom,prenom,password,email,tel)
        document.location.href = "http://localhost:3000/connexion";
    }

    return (
        <div className="container formulaire">
            <h2 className="text-center">Inscrivez-vous</h2>
            <form onSubmit={handleSubmit} method="post" className="me-5 mt-5 ms-5">
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="nom"
                           placeholder="Nom"
                           value={nom}
                           onChange={e => setNom(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="prenom"
                           placeholder="Prénom"
                           value={prenom}
                           onChange={e => setPrenom(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="tel"
                           placeholder="Téléphone"
                           value={tel}
                           onChange={e => setTel(e.target.value)}/>
                </div>
                <div className="mb-3 mt-3">
                    <input type="email"
                           className="form-control"
                           id="email"
                           placeholder="Adresse e-mail"
                           value={email}
                           onChange={e => setEmail(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="password"
                           className="form-control"
                           id="password"
                           placeholder="Mot de passe"
                           value={password}
                           onChange={e => setPassword(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <button type="submit" className="btn btn-primary form-control">S'inscrire</button>
                </div>
            </form>
        </div>
    )
}

export default InscriptionClient;