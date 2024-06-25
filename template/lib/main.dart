import 'package:flutter/material.dart';
import 'package:template/OnboardingPage.dart';
// import 'package:template/SignInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Apsel App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apsel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(0xFF, 0x00, 0xAB, 0xC4),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Apsel App'),
        '/onboard': (context) => OnboardingPage(),
        // '/signin': (context) => SignInPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          return MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Apsel App'));
        } else if (settings.name == '/onboard') {
          return MaterialPageRoute(builder: (context) => OnboardingPage());
        } //else if (settings.name == '/signin') {
        //return MaterialPageRoute(builder: (context) => SignInPage());
        //}
        return null;
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
          Navigator.pushNamed(context, '/onboard');
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
                const SizedBox(height: 10),
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
