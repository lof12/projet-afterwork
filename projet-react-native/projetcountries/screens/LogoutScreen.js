import React from "react"
import {View, StyleSheet, Button} from "react-native"
import AsyncStorage from "@react-native-async-storage/async-storage";


const LogOutScene = ({navigation}) => {

    const logOut = async () => {
        try {
            await AsyncStorage.removeItem('token')
            navigation.replace("Login")
        } catch (error) {
            console.log(error)
        }
    }

    const RefreshCommand = async () => {
        try {
            const _commands = await Commands.getAllCommands()
            //console.log(_commands)
            setCommands(_commands)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }

    return (
        <View style={styles.container}>
            <Button title="Déconnexion " onPress={logOut}/>
        </View>
    )
}


const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: "center",
        alignItems: "center"
    }
})

export default LogOutScene