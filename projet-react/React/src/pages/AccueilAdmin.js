import React, {useEffect, useState} from 'react';
import AfterWorkAPI from "../services/AfterWorkAPI";
import Credentials from "../services/Credentials";
import {Link} from "react-router-dom";

const AccueilAdmin = () => {
    const [clients, setClients] = useState([]);
    const [employes, setEmployes] = useState([]);

    const fetchClients = async () => {
        try {
            const _clients = await AfterWorkAPI.getAllClients()
            //console.log(_clients)
            setClients(_clients)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchClients();
    }, [])

    const fetchEmploye = async () => {
        try {
            const _employes = await AfterWorkAPI.getAllEmployes()
            //console.log(_employes)
            setEmployes(_employes)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchEmploye();
    }, [])

    const handleResetMDP = (e) => {
        var IdUser = e.target.value
        Credentials.resetMDP(IdUser)
    }

    return (
        <div className="text-center">
            <h1>Gestion des utilisateurs</h1>
            <div className="text-center mt-5">
                <h3>Employés
                    <Link to={`/inscription-employe`}
                          className="btn btn-warning mx-3">Ajouter
                    </Link>
                </h3>

                <div className="container">
                    <b className="row font-weight-bold">
                        <div className="col border">
                            Nom
                        </div>
                        <div className="col border">
                            Prénom
                        </div>
                        <div className="col border">
                            E-mail
                        </div>
                        <div className="col border">
                            Rôle
                        </div>
                        <div className="col border">
                        </div>
                    </b>
                    {employes.map(employe => {
                        return <div className="row">
                            <div className="col border">
                                {employe.nom}
                            </div>
                            <div className="col border">
                                {employe.prenom}
                            </div>
                            <div className="col border">
                                {employe.mail}
                            </div>
                            <div className="col border">
                                {employe.idRole.libelleRole}
                            </div>
                            <button className="btn btn-danger col border" onClick={handleResetMDP}
                                    value={employe.idEmploye}>
                                Réinitialiser mot de passe
                            </button>
                        </div>
                    })}
                </div>
            </div>
        <br/>
            <div className="text-center">
                <h3>Clients</h3>
                <div className="container">
                    <b className="row font-weight-bold">
                        <div className="col border">
                            Nom
                        </div>
                        <div className="col border">
                            Prénom
                        </div>
                        <div className="col border">
                            E-mail
                        </div>
                        <div className="col border">
                            Ville
                        </div>
                    </b>
                    {clients.map(client => {
                        return <>
                            <div className="row">
                                <div className="col border">
                                    {client.nomClient}
                                </div>
                                <div className="col border">
                                    {client.prenomClient}
                                </div>
                                <div className="col border">
                                    {client.emailClient}
                                </div>
                                <div className="col border">
                                    {client.villeClient}
                                </div>
                            </div>
                        </>
                    })}
                </div>
            </div>

        </div>
    )
}

export default AccueilAdmin;