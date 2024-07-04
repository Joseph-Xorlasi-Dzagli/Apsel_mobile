import 'package:flutter/material.dart';
import 'account.dart';
import 'package:template/OnboardingPage.dart';
<<<<<<< HEAD
// import 'package:template/screens/signUp.dart';
import 'package:template/screens/editBusinessProfile.dart';
import 'package:template/screens/editBusinessAddress.dart';
import 'package:template/screens/addPaymentAccount.dart';
import 'package:template/screens/editPaymentAccount.dart';
import 'package:template/screens/addSocialMediaAccount.dart';
import 'package:template/screens/socialMediaAccounts.dart';
import 'package:template/screens/editSocialMediaAccount.dart';
import 'package:template/screens/account.dart';
import 'package:template/screens/chat.dart';
// import 'package:template/screens/addProduct.dart';
import 'package:template/screens/messages.dart';
import 'package:template/screens/profile.dart';
import 'package:template/screens/paymentAccounts.dart';
import 'package:template/screens/inventoryProducts.dart';
import 'package:template/screens/product.dart';
import 'package:template/screens/inventoryCategories.dart';
import 'package:template/screens/businessValidation.dart';
import 'package:template/screens/scratch.dart';
import 'package:template/screens/InventoryPages/addCategoryPage.dart';
import 'package:template/screens/InventoryPages/addProduct.dart';
import 'package:template/screens/InventoryPages/editAddProduct.dart';
import 'package:template/screens/InventoryPages/editAddProductConti.dart';
import 'package:template/screens/InventoryPages/finalEditProduct.dart';
import 'package:template/screens/InventoryPages/productCategories.dart';
import 'package:template/screens/InventoryPages/productPage.dart';
import 'package:template/screens/OnboardingPages/forgetPassword.dart';
import 'package:template/screens/OnboardingPages/logIn.dart';
import 'package:template/screens/OnboardingPages/mobileNumber.dart';
import 'package:template/screens/OnboardingPages/otpPage.dart';
import 'package:template/screens/OnboardingPages/setUserLocation.dart';
import 'package:template/screens/OnboardingPages/signUp.dart';
import 'package:template/screens/OnboardingPages/verifyMobile.dart';
import 'package:template/screens/OnboardingPages/welcome.dart';
import 'package:template/screens/OnboardingPages/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'category_provider.dart';
import 'package:flutter/material.dart';




=======
>>>>>>> parent of a7f5059 (Merge branch 'main' into onboarding)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'template App';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'template App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(0xFF, 0x00, 0xAB, 0xC4)),
        useMaterial3: true,
      ),
      home: const AccountScreen(),
      initialRoute: '/',
      routes: {
<<<<<<< HEAD
        // '/': (context) => const OnboardingPage(),
        '/': (context) =>  BrowsePages(),
        '/home': (context) => const MyHomePage(title: 'template App'),
        // '/signUp': (context) => const SignUpPage(),
        '/editBusinessProfile': (context) =>  EditBusinessProfile(),
        '/editBusinessAddress': (context) =>  EditBusinessAddress(),
        '/addPaymentAccount': (context) =>  AddPaymentAccount(),
        '/editPaymentAccount': (context) =>  EditPaymentAccount(),
        '/addSocialMediaAccount': (context) =>  AddSocialMediaAccount(),
        '/socialMediaAccount': (context) =>  SocialMediaAccounts(),
        '/editSocialMediaAccount': (context) =>  EditSocialMediaAccount(),
        '/account': (context) =>  const AccountScreen(),
        '/chat': (context) =>  ChatPage(),
        // '/addProduct': (context) =>  AddProduct(),
        '/messages': (context) =>  Messages(),
        '/profile': (context) =>  Profile(),
        '/paymentAccounts': (context) =>  PaymentAccounts(),
        '/product': (context) =>  Product(),
        '/inventoryCategories': (context) =>  InventoryCategories(),
        '/inventoryProducts': (context) =>  InventoryProducts(),
        '/businessValidation': (context) =>  BusinessValidation(),
        '/scratch': (context) =>  BusinessValidationPage(),
=======
        '/': (context) => OnboardingPage(),
        '/home': (context) => const MyHomePage(title: 'Apsel App'),
>>>>>>> parent of a7f5059 (Merge branch 'main' into onboarding)
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
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/template Logo.png', height: 100),
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
