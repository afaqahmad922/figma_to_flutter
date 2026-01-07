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
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username or Email',
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Color(0xffF83758)),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 55,
                    width: 417,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffF83758),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
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
                      Container(
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
                            'assets/google.png',
                            width: 14,
                            height: 14,
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
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
                            'assets/facebook.png',
                            width: 14,
                            height: 14,
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
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
                            'assets/apple.png',
                            width: 14,
                            height: 14,
                          ),
                        ),
                      ),
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
