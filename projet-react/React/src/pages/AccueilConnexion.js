import React, {useContext, useState} from 'react';
import Credentials from "../services/Credentials";
import AuthenticationContext from "../config/credentialsContext";


const Identification = () => {

    // State pour le username et le mot de passe
    const [mail, setMail] = useState("");
    const [password, setPassword] = useState("");

    const {setIsAuthenticated} = useContext(AuthenticationContext)


    // Soumission du formulaire
    const handleSubmit = async e => {
        e.preventDefault()
        const token = await Credentials.logIn(mail, password)
        localStorage.setItem("token", token)
        setIsAuthenticated(true)     // setIsAuthenticated
        document.location.href = "http://localhost:3000/produits";
    }


    return (

        <div className="formulaire container">
            <h2 className="text-center">Identifiez-vous</h2>
            <form onSubmit={handleSubmit} method="get" className="me-5 mt-5 ms-5">
                <div className="mb-3">
                    <input type="email"
                           className="form-control"
                           id="mail"
                           placeholder="Adresse e-mail"
                           value={mail}
                           onChange={e => setMail(e.target.value)}/>
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
                    <button type="submit" className="btn btn-primary form-control">Connexion</button>
                </div>
            </form>
        </div>
    )

}

export default Identification;