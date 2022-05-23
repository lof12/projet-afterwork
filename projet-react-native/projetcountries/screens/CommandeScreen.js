import React, {useEffect, useState} from "react";
import {Text, View, StyleSheet, Button, FlatList, Pressable} from "react-native";
import commandes from "../services/commandes"

const CommandeScreen = ({navigation}) => {

    const [commands, setCommands] = useState([])

    const fetchCommands = async () => {
        try {
            const _commands = await commandes.getAllCommande()
            //console.log(_commands)
            setCommands(_commands)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchCommands();
    }, [])

    const RefreshCommand = async () => {
        try {
            const _commands = await commandes.getAllCommande()
            //console.log(_commands)
            setCommands(_commands)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    return (
        <View>
            <View>
                <Button title="Rafraîchir" color="#8CAFFA" onPress={RefreshCommand}/>
            </View>
            <FlatList data={commands} renderItem={({item}) => (
                <View key={item.idCommande}>
                    {((item.idStatut.idStatut !== 6) && (
                        <Pressable
                            onPress={() => navigation.navigate("commandeDetails", {idCommande: item.idCommande})}
                            style={styles.container}>
                            <Text style={styles.listItem}>Numéro de commande : {item.idCommande} </Text>
                            <Text style={styles.listItem}>Numéro de table : {item.noTable}</Text>
                            <Text style={styles.listItem}>Statut : {item.idStatut.libelleStatut}</Text>
                            {((item.idStatut.idStatut !== 1) && (
                                <Text style={styles.listItem}>Employé : {item.idEmploye.nom} {item.idEmploye.prenom}</Text>
                            ))}
                        </Pressable>
                    ))}
                </View>
            )}
                      keyExtractor={item => item.idCommande}
            />
        </View>
    )
}
const styles = StyleSheet.create({
    container : {
        flex:1,
        padding: 20,
        alignItems: 'center',
        justifyContent: 'center',
        borderWidth: 4,
        borderColor: "#20232a",
        borderRadius: 5,
        color: "#20232a",
    },
    listItem: {
        fontWeight: 'bold',
        textAlign: "center",
        fontSize:16,
    }
})
export default CommandeScreen;