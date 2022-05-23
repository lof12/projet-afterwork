import { StatusBar } from 'expo-status-bar';
import { StyleSheet} from 'react-native';
import {NavigationContainer} from "@react-navigation/native";
import MyStackNavigator from "./navigation/myStackNavigator";
import MainTabNavigator from "./navigation/MainTabNavigator";
import LoginStackNavigator from "./navigation/LoginStackNavigator";
import React from "react";

export default function App() {
  return (
    <NavigationContainer>
      <LoginStackNavigator>
      </LoginStackNavigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: "center",
    justifyContent: "center",
  },
});

