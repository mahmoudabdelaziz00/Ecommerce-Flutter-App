import 'package:ecommerce_s1e/screens/navigation_screen.dart';
import 'package:ecommerce_s1e/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'forget_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 60,),
              Image.asset("images/freed.png"),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=> ForgetScreen()),
                          );
                        },
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                            color: Color(0xFFEF6969),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> NavigationScreen()),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xFFEF6969),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have An Account?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> SignUpScreen(),
                              ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFFEF6969),
                                fontSize: 17,
                              ),
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
