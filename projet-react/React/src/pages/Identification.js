import {Link} from "react-router-dom";
import React from "react";

const Identification = () => {

    return (
        <>
            <header className="banner" role="banner">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="banniere"></div>
                    </div>
                    <h1 className="text-center mt-5">Qui êtes-vous ?</h1>
                </div>
            </header>
            <div className="wrapper">
                <Link className="caseInvite btn btn-outline-dark m-3 fs-1 mx-auto" to={`/produits`}>
                    <p className="titreCase">Visiteur</p>
                </Link>
                <Link className="caseEmploye btn btn-outline-dark m-3 fs-1"  to={`/connexion`}>
                    <p className="titreCase"> Employé</p>
                </Link>
            </div>

        </>
    )

}

export default Identification;
