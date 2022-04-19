import 'package:demo_pro_cth_flutter_application/screen/signIn_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget 
{
  const LandingScreen({ Key? key }) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
            SizedBox(height: 20,),
            Image.asset
              (
                'assets/images/pro_CTH_Logo.png',
                 height: 300.0,
                 width: 300.0,
              ),
            SizedBox(height: 80,),
            Padding
            (
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child:  Container
              (
                width: 400,
                height: 50,
                decoration: BoxDecoration
                (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextButton
                (
                  onPressed:()
                  {
                    Navigator.of(context).pushReplacement
                    (
                      MaterialPageRoute
                      (
                        builder:(context)=>SignInScreen()
                      )
                   );
                  }, 
                  child: Text
                  (
                    'Sign In',
                    style: TextStyle
                    (
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  )
                )
                 
                ),
            ),
            Padding
            (
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Container
              (
                width: 400,
                height: 50,
                decoration: BoxDecoration
                (
                  border: Border.all
                  (
                    color: Colors.white,
                    width: 1.5
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextButton
                (
                  onPressed:(){}, 
                  child: Text
                  (
                    'Create an Account',
                    style: TextStyle
                    (
                      color: Colors.white,
                      fontSize: 20
                    ),
                  )
                )
              ),
              ),
             _buildTermsAndPolicyButton()
          ],
        ),
      )
      
    );
  }

  Widget _buildTermsAndPolicyButton()
  {
    return Column
    (
       children: 
       [
         TextButton
         (
           onPressed:(){}, 
           child:Text
           (
             'Terms of Services',
             style: TextStyle
             (
               color: Colors.white,
               fontSize: 16,
               decoration: TextDecoration.underline
             ),
           )
         ),
         TextButton
         (
           onPressed:(){}, 
           child:Text
           (
             'Private Policy',
             style: TextStyle
             (
               color: Colors.white,
               fontSize: 16,
               decoration: TextDecoration.underline
             ),
           )
         )
       ], 
    );
  }
}