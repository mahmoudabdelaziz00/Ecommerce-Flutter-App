import 'package:ecommerce_s1e/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  List tabs = ["All" , "Category" , "Top" ,"Recommended"] ;

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

  List reviews = [
    "55",
    "666",
    "323",
    "88",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black12,
                        //     blurRadius: 1,
                        //     spreadRadius: 1,
                        //   ),
                        // ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFEF6969),
                          ),
                          border: InputBorder.none,
                          label: Text(
                            "Find Your Product",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFEF6969)
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                          color: Color(0xFFEF6969),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("images/freed.png"),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: tabs.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                     },
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 20,),
                Container(
                  height:280,
                  child: ListView.builder(
                    itemCount: imageList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context , index){
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height:200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context)=> ProductScreen(),
                                          ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(0xFFEF6969),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              productTitle[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                           Row(
                             children: [
                               Icon(
                                 Icons.star,
                                 color: Colors.amber,
                                 size: 22,
                               ),
                               Text(
                                 '(' +reviews[index] +')',
                               ),
                               SizedBox(width: 10,),
                               Text(
                                 price[index],
                                 style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFFEF6969),
                                 ),
                               ),
                             ],
                           ),
                          ],
                        ),
                      );
                      },
                  ),
                ),
                SizedBox(height: 40,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Newest Products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                GridView.builder(
                  itemCount: productTitle.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.55,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context , index){
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height:200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context)=> ProductScreen(),
                                        ));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(imageList[index]),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Color(0xFFEF6969),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            productTitle[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 22,
                              ),
                              Text(
                                '(' +reviews[index] +')',
                              ),
                              SizedBox(width: 10,),
                              Text(
                                price[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEF6969),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
