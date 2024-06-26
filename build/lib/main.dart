import 'package:flutter/material.dart';
import 'package:template/OnboardingPage.dart';
import 'package:template/screens/signUp.dart';
import 'package:template/screens/editBusinessProfile.dart';
import 'package:template/screens/editBusinessAddress.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Apsel App';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apsel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(0xFF, 0x00, 0xAB, 0xC4)),
        useMaterial3: true,
      ),
      // home: const AccountScreen(),
      routes: {
        '/': (context) => const OnboardingPage(),
        '/home': (context) => const MyHomePage(title: 'Apsel App'),
        '/signUp': (context) => const SignUpPage(),
        '/editBusinessProfile': (context) =>  EditBusinessProfile(),
        '/editBusinessAddress': (context) =>  EditBusinessAddress(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00ABC4), Color(0xFF00C3AD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Apsel Logo.png', height: 100),
                const SizedBox(height: 20),
                const Text(
                  'Drive sales and manage your store',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
