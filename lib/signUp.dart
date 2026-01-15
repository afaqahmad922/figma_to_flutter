import 'package:figma_to_flutter/signIn.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signInState();
}

class _signInState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 55, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                'Back!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppInputField(hintText: 'Username or Email', prefixIcon: Icons.person),
                  SizedBox(height: 30),
                  AppInputField(hintText: 'Password', prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye_outlined,),
                  SizedBox(height: 30),
                  AppInputField(hintText: 'Confirm Password', prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye_outlined,),
                  SizedBox(height: 10),
                  Text(
                    'By clicking the Register button, you agree to the public offer',
                    style: TextStyle(color: Color(0xffF83758)),
                  ),
                  SizedBox(height: 40),
                  Button(text: 'Create Account'),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '-OR Continue With-',
                      style: TextStyle(color: Color(0xffF83758)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Socials(imagePath: 'assets/google.png'),
                      SizedBox(width: 20,),
                      Socials(imagePath: 'assets/facebook.png'),
                      SizedBox(width: 20,),
                      Socials(imagePath: 'assets/apple.png'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 40),
                        Text(
                          'I Already Have an Account',
                          style: TextStyle(color: Color(0xffF83758)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              color: Color(0xffF83758),
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
