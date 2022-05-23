import Header from "./components/Header";
import PrivateRoute from "./components/PrivateRoute";
import AccueilRubriques from "./pages/AccueilRubriques";
import AccueilAdmin from "./pages/AccueilAdmin";
import InscriptionClient from "./pages/InscriptionClient";
import InscriptionEmploye from "./pages/InscriptionEmploye";
import AjouterProduit from "./pages/AjouterProduit";
import ProduitModif from "./pages/ProduitModif";
import AjouterCategorie from "./pages/AjouterCategorie";
import ErrorPage from "./pages/ErrorPage";
import AccueilCategories from "./pages/AccueilCategorie";
import Rubrique from "./pages/Rubrique";
import AjouterRubriques from "./pages/AjouterRubrique";
import AccueilProduit from "./pages/AccueilProduit";
import ProduitDetail from "./pages/ProduitDetail";
import AccueilConnexion from "./pages/AccueilConnexion";
import Identification from "./pages/Identification";


import Credentials from "./services/Credentials";
import AuthenticationContext from "./config/credentialsContext";

import {BrowserRouter, Route, Switch, withRouter} from "react-router-dom";
import {useEffect, useState} from "react";

import './App.css';
import ajouterArticle from "./pages/AjouterArticle";


function App() {

    const [isAuthenticated, setIsAuthenticated] = useState(Credentials.isAuthenticated)
    const [role, setRole] = useState([]);
    const AuthenticationContextValue = {
        isAuthenticated: isAuthenticated,
        setIsAuthenticated: setIsAuthenticated
    }

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

    const HeaderWithRouter = withRouter(Header)

    return (
        <AuthenticationContext.Provider value={AuthenticationContextValue}>
            <BrowserRouter>
                <HeaderWithRouter/>
                <Switch>
                    <Route exact path="/" component={Identification}/>
                    <Route exact path="/connexion" component={AccueilConnexion}/>
                    <Route exact path="/inscription" component={InscriptionClient}/>
                    <Route exact path="/inscription-employe" component={InscriptionEmploye}/>
                    <Route exact path="/produits" component={AccueilProduit}/>
                    <Route exact path="/categories" component={AccueilCategories}/>
                    <Route exact path="/rubriques" component={AccueilRubriques}/>
                    <PrivateRoute exact path="/ajouter/produit" isAuthenticated={(role === 1 && isAuthenticated)} component={AjouterProduit}/>
                    <PrivateRoute exact path="/modifier/produit/:id" isAuthenticated={(role === 1 && isAuthenticated)} component={ProduitModif}/>
                    <PrivateRoute exact path="/ajouter/categorie" isAuthenticated={(role === 1 && isAuthenticated)} component={AjouterCategorie}/>
                    <PrivateRoute exact path="/ajouter/article/:id" isAuthenticated={((role === 1|| role === 4) && isAuthenticated)} component={ajouterArticle}/>
                    <PrivateRoute exact path="/ajouter/rubrique" isAuthenticated={((role === 1|| role === 4) && isAuthenticated)} component={AjouterRubriques}/>
                    <PrivateRoute exact path="/administrer" isAuthenticated={(role === 1 && isAuthenticated)} component={AccueilAdmin}/>
                    <Route exact path="/produits/details/:id" component={ProduitDetail}/>
                    <Route exact path="/articles/:idRubrique" component={Rubrique}/>
                    <Route component={ErrorPage}/>
                </Switch>
            </BrowserRouter>
        </AuthenticationContext.Provider>
    );
}

export default App;
