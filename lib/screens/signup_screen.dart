import 'package:ecommerce_s1e/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 70,),
              Image.asset("images/freed.png"),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone)
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
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    SizedBox(height: 25,),
                    ElevatedButton(
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context)=> HomeScreen(),
                        // ));
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(55),
                        backgroundColor: Color(0xFFEF6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have An Account?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> LoginScreen(),
                            ));
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Color(0xFFEF6969),
                                fontSize: 17,
                                fontWeight: FontWeight.bold
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
