import React, {useEffect, useState} from "react"
import {Text, View, StyleSheet, FlatList, Image, Button} from "react-native"
import Commands from "../services/commandes";
import jwtDecode from "jwt-decode";
import AsyncStorage from "@react-native-async-storage/async-storage";

const DetailsCommandScene = ({route, navigation}) => {

    const {idCommande} = route.params;

    const [command, setCommand] = useState([]);
    const [productsCommand, setProductsCommand] = useState([]);

    const fetchProductsCommand = async () => {
        try {
            const _productsCommand = await Commands.getProductsCommand(idCommande)
            //console.log(_productsCommand)
            setProductsCommand(_productsCommand)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchProductsCommand();
    }, [])

    const fetchCommand = async () => {
        try {
            const _command = await Commands.getDetailsCommand(idCommande)
            //console.log(_command)
            setCommand(_command)
        } catch (error) {
            console.log('erreur : ' + error)
        }
    }
    useEffect(() => {
        fetchCommand();
    }, [])

    const formatingFloat = (nbr) => {
        return nbr.toFixed(2)
    }

    const plus1Command = async (idCommande) => {
        const id_Employe = jwtDecode(await AsyncStorage.getItem("token"))["id_employe"]
        await Commands.addOneStatutCommand(idCommande, id_Employe)
        const _command = await Commands.getDetailsCommand(idCommande)
        //console.log(_command)
        setCommand(_command)
    }
    const setStatCommand = async (idCommande, idStatut) => {
        const id_Employe = jwtDecode(await AsyncStorage.getItem("token"))["id_employe"]
        await Commands.SetStatutCommand(idCommande, idStatut, id_Employe)
        const _command = await Commands.getDetailsCommand(idCommande)
        //console.log(_command)
        setCommand(_command)
    }
    const DeleteOrder = async (idCommande) => {
        await Commands.DeleteCommmand(idCommande)
        navigation.goBack()
    }

    return (
        <View style={styles.all}>
            <View>
                <FlatList data={command} renderItem={({item}) => (
                    <View style={styles.container}>
                        <View style={styles.statut}>
                            <Text style={styles.titre}>Information sur la commande : {"\n"}</Text>
                            <Text style={styles.infoC}>Numéro de commande : {item.idCommande}</Text>
                            <Text style={styles.infoC}>Numéro de table : {item.noTable}</Text>
                            <Text style={styles.infoC}>Employé : {item.idEmploye.nom} {item.idEmploye.prenom}</Text>
                        </View>
                        <View style={styles.statut}>
                            <Text style={styles.titre}>Statut de la commande : {"\n"}</Text>
                            <Text style={styles.libelle}>{item.idStatut.libelleStatut}</Text>
                            {((item.idStatut.idStatut === 1) && (
                                <View style={styles.validation}>
                                    <Button title="Accepter" color="#40A262" onPress={() => {
                                        plus1Command(item.idCommande)
                                    }}/>
                                    <Button title="Refuser" color="#FF0000" onPress={() => {
                                        setStatCommand(item.idCommande, 7)
                                    }}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 2) && (
                                <View style={styles.validation}>
                                    <Button title="En préparation" onPress={() => {
                                        plus1Command(item.idCommande)
                                    }}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 3) && (
                                <View style={styles.validation}>
                                    <Button title="Préparation terminée" color="#40A262" onPress={() => {
                                        plus1Command(item.idCommande)
                                    }}/>
                                    <Button title="Le client est parti" color="#FF0000" onPress={() => {
                                        setStatCommand(item.idCommande, 8)
                                    }}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 4) && (
                                <View style={styles.validation}>
                                    <Button title="Livrée" color="#40A262" onPress={() => {
                                        plus1Command(item.idCommande)
                                    }}/>
                                    <Button title="Le client est parti" color="#FF0000" onPress={() => {
                                        setStatCommand(item.idCommande, 8)
                                    }}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 5) && (
                                <View style={styles.validation}>
                                    <Button title="Paiement validé" color="#40A262" onPress={() => {
                                        plus1Command(item.idCommande)
                                    }}/>
                                    <Button title="Parti sans payer" color="#FF0000" onPress={() => {
                                        setStatCommand(item.idCommande, 9)
                                    }}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 6 || item.idStatut.idStatut === 7 || item.idStatut.idStatut === 8) && (
                                <View style={styles.validation}>
                                    <Button title="Supprimer la commande" color="#898989" onPress={() => {
                                        DeleteOrder(item.idCommande)
                                    }}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 9) && (
                                <View style={styles.validation}>
                                    <Button style={{cursor:"pointer"}} title="Faire un rapport" color="#837C72"
                                            onPress={() => navigation.navigate("Report", {idCommande: item.idCommande})}/>
                                </View>
                            ))}
                            {((item.idStatut.idStatut === 10) && (
                                <View style={styles.validation}>
                                    <Text style={styles.libelle}>Le client est en train de faire une réclamation.</Text>
                                </View>
                            ))}

                        </View>
                        {((item.idStatut.idStatut !== 6 && item.idStatut.idStatut !== 7 && item.idStatut.idStatut !== 8 && item.idStatut.idStatut !== 10) && (
                            <View style={styles.validation}>
                            <Button style={styles.titreBouton} title="Supprimer la commande" color="#898989" onPress={() => {
                                DeleteOrder(item.idCommande)
                            }}/>
                            </View>
                        ))}
                    </View>
                )}
                          keyExtractor={item => item.idCommande}
                />
            </View>
            <View style={styles.titreBouton}>
                <Button title="revenir à toutes les commandes" color="#000000" onPress={() => {
                    navigation.goBack()
                }}/>
            </View>
        </View>
    )
}
const styles = StyleSheet.create({
    titre:{
        fontWeight: 'bold',
        fontSize:18,
        margin:5,
    },
    validation: {
        margin: 10,
        fontSize: 40,
        borderRadius:10,
    },
    infoC: {
        fontSize: 16,
        margin:3,
    },
    liste: {
        backgroundColor: "#62DC0D",
        borderStyle: "solid",
        marginRight:10,
        margin:2,
    },
    price: {
        backgroundColor: "#b2dbbb",
        marginRight:10,
    },
    total : {
        marginBottom:10,
    },
    titreBouton: {
        marginTop: 40,
        marginBottom: 40,
        color: "black",
        alignItems: "center",
    },

    container: {
        marginTop: 90,
        marginHorizontal: 40,
        padding: 10,
        backgroundColor: "lightgrey",
        borderRadius: 7
    },
    statut: {
        marginTop: 20,
        color: "black",
        backgroundColor: "#e6e6e6",
        borderRadius: 7,
        paddingBottom:10,
    },
    libelle: {
        fontSize: 23,
        color: "black",
        textAlign: "center",
        backgroundColor: "white",
    },
})
export default DetailsCommandScene