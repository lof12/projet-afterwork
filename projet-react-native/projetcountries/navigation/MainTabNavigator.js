import React from "react";
import {createBottomTabNavigator} from "@react-navigation/bottom-tabs";
import CommandeScreen from "../screens/CommandeScreen";
import LogoutScreen from "../screens/LogoutScreen";
import {MaterialIcons} from "@expo/vector-icons";

const Tab = createBottomTabNavigator();

const MainTabNavigator = () => {
    return (
        <Tab.Navigator initialRouteName = "Commande" screenOptions = { {
                headerStyle : { backgroundColor : "#142347"
            },
            headerTitleStyle : {
                color: "#FFF", fontWeight: "bold",fontSize:30
            },
            headerTitleAlign : "center",
            tabBarStyle :  {
                    backgroundColor: "#142347",
                    borderRadius: 15,
                    fontWeight: "bold",
                    marginBottom : 10,
                    marginHorizontal:10

            },
            tabBarActiveTintColor: "#FFF",
            tabBarInactiveTintColor: "#FFF"
            }}>
            <Tab.Screen name="Commande" component={CommandeScreen} options={ {headerTitle : "Commande", tabBarLabel : "Commande",
                tabBarIcon : ({focused,color}) =>
                    <MaterialIcons name="local-grocery-store" size={24} color="white" />
            } }/>
            <Tab.Screen name="Logout" component={LogoutScreen} options={ {headerTitle : "Se déconnecter", tabBarLabel : "Déconnexion",
                tabBarIcon : ({focused,color}) =>
                    <MaterialIcons name="logout" size={focused ? 28 : 20} color={color}/>

            } }/>
        </Tab.Navigator>

    )
}
export default MainTabNavigator;