import 'package:ecommerce_s1e/screens/payment_method_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/container_button_model_screen.dart';

class CartScreen extends StatelessWidget {

  List imageList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  List productTitle = [
    "T-Shirt",
    "Jacket",
    "Child Jacket",
    "Hooded"
  ];

  List price = [
    "\$300",
    "\$100",
    "\$600",
    "\$700",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Cart",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: imageList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context , index){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                              activeColor: Color(0xFEFF6969),
                              value: true,
                              onChanged: (val){},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitle[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Hodeed Jacket",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                price[index],
                                style: TextStyle(
                                  color: Color(0xFEFF6969),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(width: 20,),
                              Text(
                                  "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Icon(
                                CupertinoIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                   },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Selcet All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Checkbox(
                    splashRadius: 20,
                    activeColor: Color(0xFEFF6969),
                    value: false,
                    onChanged: (val){},
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$300.00",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFEFF6969)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> PaymentMethodScreen(),
                      ));
                },
                child: ContainerButtonModel(
                  containerWidth: MediaQuery.of(context).size.width,
                  itext: "Checkout",
                  bgColor: Color(0xFEFF6969),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
