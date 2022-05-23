import React, {useState} from "react";
import {Text, View, StyleSheet, Button} from "react-native";
import TextInput from "../components/TextInput";
import AsyncStorage from "@react-native-async-storage/async-storage";
import connexion from "../services/connexion";
import jwtDecode from "jwt-decode";
import useHover from "react-native-web/dist/modules/useHover";

// Ecran de connexion
const LoginScreen =  ({navigation}) => {

    const [login, setLogin] = useState('');
    const [password, setPassword] = useState('');

    //fonction asynchrone on attend la réponse avec await et on lui donne les paramètres à l'adresse de la page
    const handleLogin = async () => {
        try {
        const token = await connexion.logIn(login,password)
            console.log(jwtDecode(token)["id_employe"])
            await AsyncStorage.setItem('token', token);
        navigation.replace("MainTab");
    } catch(error) {
        console.log(error);
        }
    }

    // La vue
    return (
        <View style={styles.container}>
            <Text style={styles.title}>Connexion</Text>
            <View style={styles.input}>
                <TextInput icon="mail" placeholder="Entrer votre email" keyboardType="email-address"
                           onChangeText={value => setLogin(value)} value={login}/>
            </View>
            <View style={styles.input}>
                <TextInput icon="key" placeholder="Entrer votre mot de passe" secureTextEntry
                           onChangeText={value => setPassword(value)} value={password}/>
            </View>
            <Button title="SE CONNECTER"  color="#6e0057" background-color="transparent" border-color="6e0057" onPress={handleLogin}/>
        </View>
    )
}

const styles = StyleSheet.create({
    container : {
        flex: 1,
        alignItems: "center",
        justifyContent: "center",
      },

    title : {
        color: "#223e4b",
        fontSize:28,
        fontWeight:"bold",
        marginBottom:40
    },
    input : {
        width:'100%',
        paddingHorizontal:30,
        marginBottom: 30,
    }
})
export default LoginScreen;