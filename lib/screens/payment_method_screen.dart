import 'package:flutter/material.dart';

import '../widget/container_button_model_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {

  int _type = 1;

  void _handleRadio(Object? e)=> setState(() {
    _type = e as int ;
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context ).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Overview",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1 , color: Color(0xFEFF6969))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                activeColor: Color(0xFEFF6969),
                              ),
                              Text(
                                "Amazon Pay",
                                style: _type == 1
                                ? TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)
                                : TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.grey,),
                              ),
                            ],
                          ),
                          Image.asset(
                            "images/amazon.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(width: 1 , color: Color(0xFEFF6969))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Color(0xFEFF6969),
                              ),
                              Text(
                                "Credit Card",
                                style: _type == 2
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.grey,),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            "images/visa.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "images/mastercard.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 3
                        ? Border.all(width: 1 , color: Color(0xFEFF6969))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Color(0xFEFF6969),
                              ),
                              Text(
                                "PayPal",
                                style: _type == 3
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.grey,),
                              ),
                            ],
                          ),
                          Image.asset(
                            "images/paypal.png",
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 4
                        ? Border.all(width: 1 , color: Color(0xFEFF6969))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 4,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: Color(0xFEFF6969),
                              ),
                              Text(
                                "Google Pay",
                                style: _type == 4
                                    ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)
                                    : TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.grey,),
                              ),
                            ],
                          ),
                          Image.asset(
                            "images/icon2.png",
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 90,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub-Total",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$1300.00",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fee",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$15.00",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Divider(
                  height: 20,
                  thickness: 1,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "\$300.50",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xFEFF6969),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>PaymentMethodScreen(),
                    ),);
                  },
                  child: ContainerButtonModel(
                    containerWidth: MediaQuery.of(context).size.width,
                    itext: "Confirm Payment",
                    bgColor: Color(0xFEFF6969),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
