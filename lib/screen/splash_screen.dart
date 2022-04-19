import 'dart:async';
import 'package:demo_pro_cth_flutter_application/screen/landing_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget 
{
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer
    (
      //Duration(minutes:1,seconds:3),
      Duration(seconds: 5),
      ()=>Navigator.pushReplacement
                    (
                      context, 
                      MaterialPageRoute
                      (
                        builder:(context)=>LandingScreen()
                      )
                    ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Container
      (
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration
        (
            color: Color.fromARGB(192, 8, 168, 139),
        ),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: 
          [
            Column
            (
              children: 
              [
                Image.asset
                (
                  'assets/images/pro_CTH_Logo.png',
                  height: 300.0,
                  width: 300.0,
                ),
                
              ],
            ),
            CircularProgressIndicator
            (
               valueColor:AlwaysStoppedAnimation<Color>(Color.fromARGB(209, 3, 82, 75)),
            ),
          ],
        ),
      ),

    );
  }
}