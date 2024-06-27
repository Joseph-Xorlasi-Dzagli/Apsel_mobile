import 'package:apsel/screens/mobileNumber.dart';
import 'package:apsel/screens/signIn.dart';
import 'package:apsel/screens/verifyMobile.dart';
import 'package:apsel/screens/welcome.dart';
import 'package:apsel/screens/welcomeScreen.dart';
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
      home: VerifyMobile(),
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