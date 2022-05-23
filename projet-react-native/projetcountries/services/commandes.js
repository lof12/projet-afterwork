import axios from "../config/axios"

const getAllCommande = () => {
//with axios
    return axios
        .get('commandes')
        .then(response => response.data)
}

const getDetailsCommand = (idCommand) => {
    return axios
        .get(`commandes/details/${idCommand}`)
        .then(response => response.data)
};

const getProductsCommand = (idCommand) => {
    return axios
        .get(`commandes/products/${idCommand}`)
        .then(response => response.data)
};

const addOneStatutCommand = (idCommand,idEmploye) => {
    return axios
        .get(`CommandePlus/${idCommand}/${idEmploye}`)
        .then(response => response.data)
}

const SetStatutCommand = (idCommand,idStatut,idEmploye) => {
    return axios
        .get(`CommandSetStatut/${idCommand}/${idStatut}/${idEmploye}`)
        .then(response => response.data)
}

const DeleteCommmand = (idCommand) => {
    return axios
        .get(`deleteCommand/${idCommand}`)
        .then(response => response.data)
}

export default {getAllCommande,getDetailsCommand,getProductsCommand,addOneStatutCommand,SetStatutCommand,DeleteCommmand}