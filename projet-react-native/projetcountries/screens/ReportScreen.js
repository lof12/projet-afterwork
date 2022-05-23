import React, {useEffect, useState} from "react"
import {Text, View, StyleSheet, Button} from "react-native"
import TextInput from "../components/TextInput";
import Commands from "../services/commandes";


const ReportScreen = ({route, navigation}) => {
    const {idCommande} = route.params;

    var today = new Date();
    var date = today.getDate()+'/'+(today.getMonth()+1)+'/'+today.getFullYear();
    var time = today.getHours() + "h"+ today.getMinutes();
    var dateTime = date+' à '+time;

const Validate = () => {
    alert("Commande signalée")
    navigation.goBack()
}

    return (
        <View style={styles.container}>
            <View style={styles.input}>
                <Text style={styles.titre}>Formulaire de signalement : </Text>
                <Text style={styles.infoC}>Numéro de commande : {idCommande}</Text>
                <Text style={styles.infoC}>Date et heure de l'incident : {dateTime}</Text>
                <TextInput icon="info" placeholder="Nom du client"/>
                <TextInput icon="info" placeholder="Prénom du client"/>
                <TextInput icon="info" placeholder="Numéro de table" keyboardType="numeric"/>
                <Button title="Signaler" onPress={Validate}/>
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: "center",
        alignItems: "center"
    },
    titre:{
        fontWeight: 'bold',
        fontSize:25,
        textAlign:"center",
        justifyContent: "center",
        alignItems: "center",
        marginBottom:30,
    },
    infoC: {
        fontSize: 16,
        margin:3,
    },
    title: {
        color: "#2E4057",
        fontSize: 28,
        fontWeight: "bold",
        marginBottom: 40
    },
    input: {
        width: "100%",
        paddingHorizontal: 20
    }
})

export default ReportScreen