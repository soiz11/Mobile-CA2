// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/components/custom_btn.dart';
import 'package:Mobile_CA_2/pages/delivery.dart';
import 'package:flutter/material.dart';

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
        count = 1;
      } else {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double mainLinespace = 12; //Space between Two main topics
    double subLinespace = 8; //Space between Two sub topics

    const double maintopicSize = 16; //font size of main topic
    const double subtopicSize = 14; //font size of sub topic
    const double contentSize = 12; //font size of content

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Order",
          style: TextStyle(
            fontFamily: "Bold",
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left),
          ),
        ),
      ),
      backgroundColor: AppColors.pureWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    padding: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        color: AppColors.btnGrey,
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
                                  "Deliver",
                                  style: TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: maintopicSize,
                                      color: AppColors.pureWhite),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Delivery Address",
                          style: TextStyle(
                              fontFamily: "Bold",
                              fontSize: maintopicSize,
                              fontWeight: FontWeight.bold)),
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
                        height: mainLinespace,
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
                            padding: const EdgeInsets.only(
                                left: 4, bottom: 2, right: 2, top: 2),
                            width: 120,
                            height: 25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(0, 198, 124, 78),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: AppColors.bodyTextGrey,
                                )),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  child: const Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.edit_note_outlined,
                                        color: AppColors.bodyTextGrey,
                                        size: 15,
                                      )),
                                ),
                                Container(
                                  child: const Text(
                                    'Edit Address',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Regular',
                                      fontSize: contentSize,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: mainLinespace,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 6, bottom: 2, right: 2, top: 2),
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(0, 198, 124, 78),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: AppColors.bodyTextGrey,
                                )),
                            child: const Row(
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.note_add_outlined,
                                      color: AppColors.bodyTextGrey,
                                      size: 12,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Add Note',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Regular',
                                    fontSize: contentSize,
                                  ),
                                ),
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
                  SizedBox(
                    height: mainLinespace,
                  ),
                  Container(
                      height: 1,
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: AppColors.bodyTextGrey,
                      )),
                  SizedBox(
                    height: mainLinespace * 2,
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
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'lib/assets/images/c_choco.png')),
                              color: AppColors.btnBrown,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Cappucino",
                                    style: TextStyle(
                                      fontFamily: "Bold",
                                      fontSize: maintopicSize,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    'with Chocolate',
                                    style: TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: contentSize,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 110,
                            // height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    decrementCount();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          0, 155, 155, 155),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              71, 155, 155, 155),
                                          width: 2),
                                    ),
                                    child: const Text(
                                      '-',
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: subtopicSize,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
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
                                    style: const TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: maintopicSize,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    incrementCount();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          0, 155, 155, 155),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              71, 155, 155, 155),
                                          width: 2),
                                    ),
                                    child: const Text(
                                      '+',
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: subtopicSize,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                      )),
                  SizedBox(
                    height: mainLinespace,
                  ),
                  Container(
                    height: 55,
                    padding: const EdgeInsets.only(left: 5.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: AppColors.bodyTextGrey,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.btnBrown,
                                      ),
                                      child: const Icon(
                                        Icons.percent_rounded,
                                        color: AppColors.pureWhite,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    child: Container(
                                      width: 150,
                                      child: const Text(
                                        "1 Discount is Applied!",
                                        style: TextStyle(
                                            fontFamily: "Bold",
                                            fontSize: subtopicSize,
                                            color: AppColors.textBlack),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 12,
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
                              fontSize: subtopicSize,
                            ),
                          ),
                          Text(
                            "\$4.53",
                            style: TextStyle(
                              fontFamily: 'Bold',
                              fontSize: subtopicSize,
                            ),
                          )
                        ],
                      ),
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
                              fontSize: subtopicSize,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$2.0",
                                style: TextStyle(
                                  fontFamily: 'Regular',
                                  fontSize: subtopicSize,
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
                                  fontSize: subtopicSize,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
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
                      Text('Total Payment',
                          style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: subtopicSize,
                          )),
                      Text(
                        '\$ 5.53',
                        style: TextStyle(
                          fontFamily: 'Bold',
                          fontSize: subtopicSize,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: subLinespace,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 25),
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        child: const Icon(
                          Icons.money_rounded,
                          color: AppColors.btnBrown,
                          size: 25,
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: AppColors.btnBrown,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Cash',
                              style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: subtopicSize,
                                color: AppColors.pureWhite,
                              ),
                            ),
                          )),
                      Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(40, 126, 126, 126),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              '\$ 5.53',
                              style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: subtopicSize,
                                color: AppColors.textBlack,
                              ),
                            ),
                          )),
                    ],
                  ),
                  Container(
                    child: const Icon(
                      Icons.menu_rounded,
                      color: Color.fromARGB(137, 129, 129, 129),
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mainLinespace,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBtn(
                  btnText: "ORDER",
                  widthFactor: 0.9,
                  heightAmount: 60,
                  marginX: 0,
                  fontSize: maintopicSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Delivery(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
