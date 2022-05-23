import React from "react";
import {View, Text, Button} from "react-native";

const CountryScreen = (navigation,route) => {

    const pays =route.params.pays;
    const capitale = route.params.capitale;

    return (
        <View>
            <Text>Détail du pays</Text>
            <Text>{pays}</Text>
            <Text>{capitale}</Text>
            <Button
                title="Liste des pays"
                onPress = { () => this.props.navigation.navigate("Countries")}
            />
            <Button
                title="Go back"
                onPress = { () => this.props.navigation.goBack() }
            />
        </View>
    )
}

export default CountryScreen;