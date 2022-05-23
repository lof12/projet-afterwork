import React from "react";
import {createNativeStackNavigator} from "@react-navigation/native-stack";
import LoginScreen from "../screens/LoginScreen";
import MainTabNavigator from "./MainTabNavigator";
import {Button} from "react-native";
import commandeDetailsScreen from "../screens/CommandeDetailsScreen";
import ReportScreen from "../screens/ReportScreen";

const Stack = createNativeStackNavigator();

const LoginStackNavigator = () => {
    return (
        <Stack.Navigator initalRouteName="Login" screenOptions={{headerShown: false}}>
            <Stack.Screen name="Login" component={LoginScreen}/>
            <Stack.Screen name="MainTab" component={MainTabNavigator}/>
            <Stack.Screen name="commandeDetails" component={commandeDetailsScreen}/>
            <Stack.Screen name="Report" component={ReportScreen}/>
        </Stack.Navigator>
    )
}

export default LoginStackNavigator;