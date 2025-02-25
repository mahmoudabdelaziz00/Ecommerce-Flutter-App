import 'package:flutter/material.dart';

import 'otp_verify_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
                "Please Enter your number. You Will recieve"
                    " a OTP to create new password via number.",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Number"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>OTPVerifyScreen()),
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

            ],
          ),
        ),
      ),
    );
  }
}
