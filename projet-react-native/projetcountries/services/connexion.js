import axios from "../config/axios"

const logIn = (login,password) => {
//with axios
    return axios
        .post("/connexionEmp",{"mail":login,"mot_de_passe":password})
        .then(response => response.data.token)
}

export default {logIn};