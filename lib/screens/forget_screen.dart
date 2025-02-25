import 'package:ecommerce_s1e/screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {

  bool ctrlButton = false ;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Please Enter your email address. You Will recieve"
                    " a link to create new password via email.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: emailController,
                onChanged: (val){
                  if(val != ""){
                    setState(() {
                      ctrlButton = true ;
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        emailController.clear();
                      });
                    },
                    child: Icon(
                      CupertinoIcons.multiply,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>RecoveryScreen()),
                  );
                },
                child: Text(
                  "Send Code",
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
              SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("OR"),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context)=> OTPScreen()),
                      );
                    },
                    child: Text(
                      "Verify Using Number",
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
      ),
    );
  }
}
