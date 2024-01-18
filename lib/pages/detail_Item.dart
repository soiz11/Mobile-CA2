import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/components/custom_btn.dart';
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      size: 25,
                    ),
                    Text(
                      "Detail",
                      style: TextStyle(
                          color: AppColors.backgroundBlack,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 25,
                    ),
                  ],
                ),

                Container(
                  padding: const EdgeInsets.all(8),
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/cappucino.png"),
                    ),
                  ),
                ),

                // capachino
                const Row(children: [
                  Text(
                    "Cappucino",
                    style: TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "regular"),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ]),

                //with cocholate
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "With Chocolate",
                      style: TextStyle(
                          color: AppColors.bodyTextGrey,
                          fontSize: 14,
                          fontFamily: "regular"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("lib/assets/images/icon_a.png"),
                        Image.asset("lib/assets/images/bags.png"),
                      ],
                    ),
                  ],
                ),

                //rate
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.starYellow,
                      size: 22.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                          color: AppColors.textBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "regular"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "(230)",
                      style: TextStyle(
                          color: AppColors.bodyTextGrey,
                          fontSize: 16,
                          fontFamily: "regular"),
                    ),
                  ],
                ),
                const Divider(
                  color: AppColors.btnGrey,
                ),

                // Description
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: AppColors.textBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "A cappuccino is an approximately 150ml (50z) beverage, with 25ml of espresso coffee and 85ml of fresh milk the fo.....",
                      style: TextStyle(
                          color: AppColors.bodyTextGrey,
                          fontSize: 16,
                          fontFamily: "regular"),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(
                          color: AppColors.textBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "regular"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),

                // SML bottun

                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                        color: AppColors.pureWhite,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.bodyTextGrey),
                      ),
                      child: const Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                        color: AppColors.btnColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.btnBrown),
                      ),
                      child: const Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            color: AppColors.btnBrown,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                        color: AppColors.pureWhite,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.bodyTextGrey),
                      ),
                      child: const Center(
                        child: Text(
                          "L",
                          style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),

                //prise
                Row(
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Prise",
                          style: TextStyle(
                              color: AppColors.bodyTextGrey,
                              fontSize: 18,
                              fontFamily: "regular"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '\$ 4.53',
                          style: TextStyle(
                              color: AppColors.btnBrown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "regular"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBtn(
                          btnText: "Buy Now",
                          widthFactor: 0.6,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
