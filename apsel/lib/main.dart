import 'package:apsel/screens/InventoryPages/addProduct.dart';
import 'package:apsel/screens/InventoryPages/productPage.dart';
import 'package:apsel/screens/OnboardingPages/logIn.dart';
import 'package:apsel/screens/OnboardingPages/mobileNumber.dart';
import 'package:apsel/screens/OnboardingPages/setUserLocation.dart';
import 'package:apsel/screens/OnboardingPages/signUp.dart';
import 'package:apsel/screens/OnboardingPages/verifyMobile.dart';
import 'package:apsel/screens/OnboardingPages/welcome.dart';
import 'package:apsel/screens/OnboardingPages/welcomeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: AddProduct(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Welcome to Apsel'),
      ),
      body:  Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Image.asset("assets/images/splash.png"),
            Text("Drives sales and manage your store"),
          ]
        ) ,
      ),
    );
  }
}
