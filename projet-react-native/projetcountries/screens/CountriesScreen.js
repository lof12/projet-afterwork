import React, {useEffect, useState} from "react";

import {View, Text, StyleSheet, Button, FlatList} from "react-native";
import axios from "axios";

const CountriesScreen = (navigation) => {

    const [countries, setCountries] = useState([]);
    const fetchCountries = async () => {
        const response = await axios.get("https://restcountries.com/v3.1/subregion/europe");
        setCountries(response.data);
    }
        useEffect(() => {
            fetchCountries();
        }, [])

    return (
        <View style={styles.container}>
            <Text>Liste des pays</Text>
            <Button
                title="Détail pays"
                onPress = {() =>this.props.navigation.navigate("Country", {
                    pays:"France",
                    capitale:"Paris",
                })}
            />
            <FlatList data={countries} renderItem={({item}) => (
    <Text>{item.translations.fra["common"]}</Text>
)}
    keyExtractor={(item) => item.name.common}
    />
        </View>
    )
}
const styles = StyleSheet.create({
    container: {
        flex:1,
        marginVertical:10,
        padding:20,
    }
})

export default CountriesScreen;