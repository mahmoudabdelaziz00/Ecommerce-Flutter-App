import 'package:ecommerce_s1e/screens/recovery_screen.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {

  int _otpCodeLength = 4;

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }
  TextEditingController textEditingController = new TextEditingController(text: "");


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
                  "Enter OTP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Please Enter OTP Code. "
                    "Plese Check your number and enter here OTP",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 60,),
              TextFieldPin(
                  textController: textEditingController,
                  autoFocus: false,
                  codeLength: _otpCodeLength,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 55.0,
                  margin: 10,
                  selectedBoxSize: 46.0,
                  textStyle: TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(
                          color: Theme.of(context)
                              .primaryColor
                              .withOpacity(0.6))),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    setState(() {

                    },);
                  },),
              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>RecoveryScreen()),
                  );
                },
                child: Text(
                  "Verify",
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
            ],
          ),
        ),
      ),
    );
  }
}
