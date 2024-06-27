import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboarding.jpg',),
            fit:BoxFit.cover
          ),
        ),
        child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              SizedBox(height:350,),
            Image.asset('assets/images/splash.png'),
            Text("Drive sales and manage your store"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                onPressed: () {
                  // Define the button's onPressed functionality here
                },
                child: Text('Get Started'),
              )
              ]
        ),
      ),
    );
  }
}
