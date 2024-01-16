// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class DeatailItem extends StatefulWidget {
  const DeatailItem({super.key});

  @override
  State<DeatailItem> createState() => _DeatailItemState();
}

class _DeatailItemState extends State<DeatailItem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.pureWhite,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/images/cappucino.png"),
                        ),
                      ),
                    ),
                  ],
                ),

                //Rate
                Padding(
                  padding: EdgeInsets.all(10),
                  child: BlurryContainer(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Cappuccino",
                                style: TextStyle(
                                    color: AppColors.textBlack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                                "With Chocolate",
                                style: TextStyle(
                                  color: AppColors.bodyTextGrey,
                                  //fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.starYellow,
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "(230)",
                                    style: TextStyle(
                                      color: AppColors.bodyTextGrey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 42,
                                  width: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "lib/assets/images/icon_a.png"),
                                        height: 35,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                //other container

                //description
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Description",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "A cappuccino is an approximately 150ml (50z) beverage, with 25ml of espresso coffee and 85ml of fresh milk the fo.....",
                        style: TextStyle(
                            color: AppColors.bodyTextGrey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),

                // s l m
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 37,
                        width: 110,
                        child: Center(
                          child: Text(
                            "S",
                            style: TextStyle(
                              color: AppColors.textBlack,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.btnGrey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.btnGrey),
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Container(
                        height: 37,
                        width: 110,
                        child: Center(
                          child: Text(
                            "M",
                            style: TextStyle(
                              color: AppColors.btnBrown,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.pureWhite,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.btnBrown),
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Container(
                        height: 37,
                        width: 110,
                        child: Center(
                          child: Text(
                            "L",
                            style: TextStyle(
                              color: AppColors.textBlack,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.btnGrey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.btnGrey),
                        ),
                      ),
                      SizedBox(
                        height: 27,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
