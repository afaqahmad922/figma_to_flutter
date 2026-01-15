import 'package:figma_to_flutter/Forgor%20Password.dart';
import 'package:figma_to_flutter/signUp.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
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
                  AppInputField(hintText: 'Username or Email', prefixIcon: Icons.person,),
                  SizedBox(height: 30),
                  AppInputField(hintText: 'Password', prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye_outlined,),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector( onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPassword()));
                      },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Color(0xffF83758)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Button(text: 'Login'),
                  SizedBox(height: 80),
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
                          'Create an Account',
                          style: TextStyle(color: Color(0xffF83758)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
                          },
                          child: Text(
                            'SIGN UP',
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

class AppInputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon; // nullable

  const AppInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;

  const Button ({
    super.key,
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffF83758),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
      ),
    );
  }
}

class Socials extends StatelessWidget {
  final String imagePath;
  const Socials ({
    super.key,
    required this.imagePath,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
        border: Border.all(color: Color(0xffF83758)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          imagePath,
          width: 14,
          height: 14,
        ),
      ),
    );
  }
}

