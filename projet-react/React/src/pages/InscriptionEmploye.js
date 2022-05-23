import React, {useEffect, useState} from 'react';
import Credentials from "../services/Credentials";
import AfterWorkAPI from "../services/AfterWorkAPI";

const InscriptionEmploye = () => {

    const [roles, setRoles] = useState([]);


    const [idRole, setIdrole] = useState("");
    const [nom, setNom] = useState("");
    const [prenom, setPrenom] = useState("");
    const [password, setPassword] = useState("");
    const [email, setEmail] = useState("");
    const [libRue, setLibRue] = useState("");
    const [CPVille, setCPVille] = useState("");
    const [Ville, setVille] = useState("");
    const [tel, setTel] = useState("");
    const [dateEmbauche, setDateEmbauche] = useState("");

    const fetchRole = async () => {
        try {
            const _roles = await AfterWorkAPI.getAllRole()
            //console.log(_roles)
            setRoles(_roles)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchRole();
    }, [])

    const handleSubmit = async e => {
        //console.log(idRole, nom, prenom, password, email, libRue, CPVille, Ville, tel, dateEmbauche)
        e.preventDefault()
        await Credentials.newEmploye(idRole, nom, prenom, password, email, libRue, CPVille, Ville, tel, dateEmbauche)
        document.location.href = "http://localhost:3000/administrer";
    }

    return (
        <div className="container formulaire">
            <h2 className="text-center mt-3">Ajouter un employé</h2>
            <form onSubmit={handleSubmit} method="post" className="me-5 mt-5 ms-5">

                <div className="mb-3">
                    <label className="form-label">Role :</label>
                    <select className="form-control" id="id_role" onClick={e => setIdrole(e.target.value)}>
                        {roles.map(role => {
                            return <option key={role.idRole}
                                           value={role.idRole}>{role.libelleRole}
                            </option>
                        })}
                    </select>
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
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="text"
                           placeholder="Libellé de la rue"
                           value={libRue}
                           onChange={e => setLibRue(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="number"
                           className="form-control"
                           id="CP"
                           placeholder="Code postal"
                           value={CPVille}
                           onChange={e => setCPVille(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="text"
                           className="form-control"
                           id="ville"
                           placeholder="Ville"
                           value={Ville}
                           onChange={e => setVille(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <input type="date"
                           className="form-control"
                           id="dateEmbauche"
                           placeholder="Date de recrutement"
                           value={dateEmbauche}
                           onChange={e => setDateEmbauche(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <button type="submit" className="btn btn-primary form-control">S'inscrire</button>
                </div>
            </form>
        </div>
    )
}

export default InscriptionEmploye;