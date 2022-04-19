import 'package:demo_pro_cth_flutter_application/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInScreen extends StatefulWidget 
{
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> 
{
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
        [
          Padding
          (
            padding: const EdgeInsets.only(top:50.0,bottom: 30.0),
            child: Text
            (
              'Sign in',
              style: TextStyle
              (
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded
            (
              child: _buildSignInWidgets()
            ),
        
        ],
      )
    );
  }

  Widget _buildSignInWidgets()
  {
       return Container
       (
        
        decoration: BoxDecoration
        (
          color: Colors.teal[300],
          borderRadius: BorderRadius.only
          (
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35)
          )
        ),
        child: ListView
        (
           scrollDirection: Axis.vertical,
           children: 
           [
              SizedBox(height: 20,),
              
              _buildPhoneNumberInputField(),
             
             _buildSendOtpButton(),

             SizedBox(height: 20,),

             _buildResendButtonAndExpiryOtpWidget(),

             SizedBox(height: 20,),

             Row
             (
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              [
              _buildOtpInputField(_fieldOne, true),
              _buildOtpInputField(_fieldTwo, false),
              _buildOtpInputField(_fieldThree, false),
              _buildOtpInputField(_fieldFour, false)
             ],
            ),

             SizedBox(height: 15,),
            
            _buildSignInButton(),

            SizedBox(height: 60,),

            _buildTermsAndPolicyButton()
           ],
        ),
       );
  
  }
  
  Widget _buildPhoneNumberInputField()
  {
     return Container
              (
                
                padding: const EdgeInsets.all(20),
                child: IntlPhoneField
                        (
                          decoration: InputDecoration
                                     ( 
                                      hintText: '9876543210',
                                      hintStyle: TextStyle
                                      (
                                        color: Colors.white
                                      ),
                                      enabledBorder: UnderlineInputBorder
                                      (
                                        borderSide: BorderSide
                                        (
                                          color: Colors.white
                                        )
                                      ),
                                      focusedBorder: UnderlineInputBorder
                                      (
                                         borderSide: BorderSide
                                        (
                                          color: Colors.white
                                        )
                                      ),
                                      counterStyle: TextStyle(color: Colors.white),//It will change the color of maxLength property of textfield
                                      //suffixIcon: Icon(Icons.phone)
                                     ),
                           style: TextStyle
                                     (
                                       color: Colors.white
                                     ),
                           dropdownTextStyle: TextStyle
                           (
                             color: Colors.white
                           ),
                           initialCountryCode: 'IN',
                           onChanged: (phone) 
                           {
                                   print(phone.completeNumber);
                           },
                           onCountryChanged: (country) 
                           {
                             print('Country changed to: ' + country.name);
                           },
                  ),
              );

  }


  Widget _buildResendButtonAndExpiryOtpWidget()
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: 
      [
        Text
        (
          'OTP will expire in 180 seconds',
          style: TextStyle
          (
            color: Colors.white.withOpacity(0.5)
          ),
        ),
        TextButton
        (
          onPressed:(){}, 
          child: Text
          (
            'Resend OTP',
           style: TextStyle
             (
               color: Colors.white
             ),
          )
        )
      ],
    );
  }

  Widget _buildOtpInputField(TextEditingController controller, final bool autoFocus)
  {
    return Container
    (
      width: 50,
      height: 60,
     
      child: TextField
      (
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Colors.white,
        style: TextStyle
        (
          color: Colors.white
        ),
        decoration: const InputDecoration
        (
            focusedBorder: OutlineInputBorder
            (
              borderSide:BorderSide
              (
                color: Colors.greenAccent, 
                width: 1.0
              ),
            ),
             enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            counterText: '',
            hintStyle: TextStyle(color: Colors.white, fontSize: 20.0)),
        onChanged: (value) 
        {
          if (value.length == 1) 
          {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }

  Widget _buildSendOtpButton()
  {
    return Padding
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
                   print('OTP sent on your number');
                  }, 
                  child: Text
                  (
                    'Send OTP',
                    style: TextStyle
                    (
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  )
                )
                 
                ),
            );
  }

  Widget _buildSignInButton()
  {
    return Padding
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
                  onPressed:()
                  {
                  setState(() 
                  {
                     _otp = _fieldOne.text +
                            _fieldTwo.text +
                            _fieldThree.text +
                            _fieldFour.text;
                   });
                   print(_otp);
                   Navigator.of(context).pushReplacement
                   (
                      MaterialPageRoute
                      (
                        builder:(context)=>ProfileScreen()
                      ),  
                   );

                  }, 
                  child: Text
                  (
                    'Sign In',
                    style: TextStyle
                    (
                      color: Colors.white,
                      fontSize: 20
                    ),
                  )
                )
              ),
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