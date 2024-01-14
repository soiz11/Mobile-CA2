import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/components/custom_btn.dart';
import 'package:flutter/material.dart';
// import 'package:Mobile_CA_2/constants.dart';
// import 'package:Mobile_CA_2/models/cart_item.dart';
// import 'package:Mobile_CA_2/widgets/cart_tile.dart';
// import 'package:Mobile_CA_2/widgets/check_out_box.dart';


class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {


    int count = 1;

    void incrementCount() {
      setState(() {
        count++;
      });
    }

    void decrementCount() {
      setState(() {
        if (count <= 1) {
          count = 1 ;
        } else {
          count--;
        }
        
      });
    }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    double mainLinespace = 10; //Space between Two main topics
    double subLinespace = 5;  //Space between Two sub topics

    const double maintopicSize = 16; //font size of main topic
    const double subtopicSize = 12;   //font size of sub topic
    const double contentSize = 10;   //font size of content





    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Order",
          style: TextStyle(
            fontFamily: "Bold",
          ),
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_left),
            ),
          ),
        ),
        backgroundColor: AppColors.pureWhite,
        body: SingleChildScrollView(
          
          // child: Container(
          // width: screenWidth,
          // height: screenHeight - 56,
          // color:Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                
                
                
                      Container(
                        height: 55,
                        padding: EdgeInsets.only(left: 5.0),
                        decoration: BoxDecoration(
                            color: AppColors.btnGrey,
                            // color: Colors.black.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: AppColors.btnBrown,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                    child: Text(
                                      "Delivery",
                                      style: TextStyle(
                                        
                                        fontFamily: "Regular",
                                        fontSize: maintopicSize, color: AppColors.pureWhite),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: const Center(
                                  child: Text(
                                    "Pick UP",
                                    style: TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: maintopicSize,
                                      color: AppColors.textBlack,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      
                      
                      const SizedBox(
                        height: 20,
                      ),
                      
                      
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Delivery Address",
                            style:TextStyle(
                              fontFamily: "Bold",
                              fontSize: maintopicSize,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          SizedBox(
                            height: mainLinespace,
                          ),
                          const Text(
                            "J1. Kpg Sutoyo",
                            style: TextStyle(
                              fontSize: subtopicSize,
                              fontFamily: "Bold",
                            ),
                          ),
                          SizedBox(
                            height: subLinespace,
                          ),
                          const Text(
                            "Kpg.Sutoyo No.620, Bilzen, Tanjungbalai.",
                            style: TextStyle(
                              fontFamily: "Regular",
                              fontSize: contentSize,
                            ),
                          ),
                          SizedBox(
                            height: subLinespace,
                          ),
                          SizedBox(
                                width: subLinespace,
                              ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                width: 90,
                                height: 20,
                                decoration: BoxDecoration(
                                color: const Color.fromARGB(0, 198, 124, 78),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppColors.bodyTextGrey,)
                                      
                                      ),
                                
                                child: Row(
                                  children: [
                                    Container(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(Icons.edit_note_outlined, color: AppColors.bodyTextGrey, size: 15, )),
                                      ),
                                      Text('Edit Address',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Regular',
                                        fontSize: contentSize,
                                        
                                      ),),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: mainLinespace,
                              ),

                              Container(
                                padding: EdgeInsets.all(2),
                                width: 80,
                                height: 20,
                                decoration: BoxDecoration(
                                color: const Color.fromARGB(0, 198, 124, 78),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppColors.bodyTextGrey,)
                                      
                                      ),
                                
                                child: Row(
                                  children: [
                                    Container(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(Icons.note_add_outlined, color: AppColors.bodyTextGrey, size: 12, )),
                                      ),
                                      Text('Add Note',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Regular',
                                        fontSize: contentSize,
                                      ),),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                
                      
                      SizedBox(
                        height: mainLinespace,
                      ),
                      
                      
                      Container(
                        height: 1,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          color: AppColors.bodyTextGrey,
                          
                        )
                      ),
                      
                      
                      
                      SizedBox(
                        height: mainLinespace*2,
                      ),
                      
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit:BoxFit.cover,image:AssetImage('lib/assets/images/c_chco.png')
                                ),
                                color: AppColors.btnBrown,
                              ),
                            ),
                            
                            const SizedBox(
                              width: 10,
                            ),
                            
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.end,
                                    
                                    children: [
                                      
                                      Padding(
                                      
                                        padding: EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          "Cappucino",
                                          // textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: "Bold",
                                            fontSize: subtopicSize,
                                            
                                            // backgroundColor: Colors.yellow,
                                            
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'with Chocolate',
                                          style: TextStyle(
                                            fontFamily: "Regular",
                                            fontSize: contentSize,
                                            // backgroundColor: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            ),
                          ],
                          
                          
                          
                          
                          ),
                      
                        Row(
                            children:[
                            Container(
                              width: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                InkWell(
                                  onTap: () {
                                    decrementCount();
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    // borderRadius:BorderRadius.circular(5),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(0, 155, 155, 155),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppColors.bodyTextGrey, width: 2),
                                    ),
                                    child: const Text(
                                      '-',
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: subtopicSize,
                                        
                                      ),),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(0, 155, 155, 155),
                                  ),
                                  child: Text(
                                    count.toString(),
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: subtopicSize,
                                      
                                    ),),
                                ),
                                InkWell(
                                  onTap: (){incrementCount();},
                            
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(0, 155, 155, 155),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppColors.bodyTextGrey, width: 2),
                                    ),
                                    child: const Text(
                                      '+',
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: subtopicSize,
                                        
                                      ),),
                                  ),
                                ),
                              
                              ],),
                            ),
                            ],
                          )
                      
                          
                        ],
                      ),
                          
                          
                      const SizedBox(
                        height: 20,
                      ),
                      
                      Container(
                        height: 3,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          color: AppColors.bodyTextGrey,
                          
                        )
                      ),

                      SizedBox(
                        height: mainLinespace,
                      ),

                      Container(
                        height: 55,
                        padding: EdgeInsets.only(left: 5.0),
                        decoration: BoxDecoration(
                            // color: AppColors.btnGrey,
                            // color: Colors.black.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      // color: const Color.fromARGB(0, 198, 124, 78),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: AppColors.bodyTextGrey,)
                                      ),
                                  child:  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Icon(Icons.percent_rounded, color: AppColors.pureWhite, size: 12, ),
                                          height: 50,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            
                                            // image: const DecorationImage(
                                            //   fit:BoxFit.cover,image:AssetImage('lib/assets/images/c_chco.png')
                                            // ),
                                            color: AppColors.btnBrown,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "1 Discount is Applied!",
                                            style: TextStyle(
                                              
                                              fontFamily: "Bold",
                                              fontSize: maintopicSize, color: AppColors.textBlack),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                
                
                      SizedBox(
                        height: mainLinespace,
                      ),
                
                
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const Text(
                          'Payment Summery',
                          style: TextStyle(
                            fontFamily: 'Bold',
                            fontSize: maintopicSize,
                
                          ),
                        ),

                        SizedBox(
                          height: mainLinespace,
                        ),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              fontFamily: 'Regular',
                              fontSize: contentSize,
                            ),
                          ),
                          Text(
                            "\$4.53",
                            style: TextStyle(
                              fontFamily: 'Bold',
                              fontSize: contentSize,
                            ),
                          )
                        ],),

                        SizedBox(
                          height: subLinespace,
                        ),




                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                            'Delivery Fee',
                            style: TextStyle(
                              fontFamily: 'Regular',
                              fontSize: contentSize,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$2.0",
                                style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: contentSize,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$1.0",
                                style: TextStyle(
                                  fontFamily: 'Bold',
                                  fontSize: contentSize,
                                ),
                              ),
                            ],
                          )
                        ],),
                
                
                
                        
                      ],),
                      Container(
                        height: 1,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          color: AppColors.bodyTextGrey,
                          
                        ),
                      ),

                      

                        SizedBox(
                          height: mainLinespace,
                        ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Payment',
                            style:TextStyle(
                              fontFamily: 'Regular',
                              fontSize: contentSize,
                            )
                          ),
                          Text(
                            '\$ 5.53',
                            style: TextStyle(
                              fontFamily: 'Bold',
                              fontSize: contentSize,
                            ),
                          ),
                        ],
                      ),

                      
                      // Stack(
                      //   children:[ Positioned(
                      //     bottom: 0,
                      //     child: Container(
                      //       alignment: Alignment.center,
                      //       height: 50,
                      //       width: screenWidth,
                      //       decoration: BoxDecoration(
                      //         color: AppColors.btnBrown,
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //     ),
                      //   ),],
                      // ),
                

                      SizedBox(
                        height: mainLinespace*2,
                      ),

                      
                      
                      // InkWell(
                      //   onTap: () {},
                      //   child: Container(
                      //     alignment: Alignment.center,
                      //     height: 50,
                      //     width: screenWidth,
                      //     decoration: BoxDecoration(
                      //       color: AppColors.btnBrown,
                      //       borderRadius: BorderRadius.circular(10),
                                            
                      //                     ),
                      //     child: const Text(
                      //       'ORDER',
                      //       style: TextStyle(
                      //         fontFamily: 'Bold',
                      //         fontSize: maintopicSize,
                      //         color: AppColors.pureWhite
                      //       ),
                      //     )
                      //                   ),
                      // ),       
                    
                    ],
                  ),
                ),
                Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          CustomBtn(
                            btnText: "ORDER",
                            widthFactor: 0.8,
                            heightAmount: 50,
                            fontSize: maintopicSize,
                            onTap: () {},
                          
                          ),
                        ],
                    ),


              ],
            ),
          ),
        ),
        // ),
      
    );
  }
}
