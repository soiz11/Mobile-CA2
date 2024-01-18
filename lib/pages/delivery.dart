
import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'lib/assets/images/map.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 40.0,
              left: 10.0,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Handle back arrow press
                  },
                ),
              ),
            ),
            
            Positioned(
              top: 40.0,
              right: 10.0,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.my_location,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Handle search icon press
                  },
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 300.0,
                decoration: BoxDecoration(
                  color: AppColors.pureWhite,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 50,
                      height: 5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.bodyTextGrey.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ), 
                    const SizedBox(height: 10.0),
                    
                    Container(
                      child: const Text(
                        '10 minutes left',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'bold',
                          fontSize: 20,
                        ),
                      ),
                    ),

                    const SizedBox(height: 5.0),

                    Container(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          children: [
                            TextSpan(
                              text: 'Delivery to ',
                              style: TextStyle(
                                fontFamily: 'regular',
                                color: AppColors.bodyTextGrey,
                              ),
                            ),
                            TextSpan(
                              text: 'JI. Kpg Sutoyo',
                              style: TextStyle(
                                fontFamily: 'bold',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 10.0),

                    Container(
                      height: 5,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: AppColors.bargreen.withOpacity(1.0),
                              margin: const EdgeInsets.only(right: 5.0),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: AppColors.bargreen.withOpacity(1.0),
                              margin: const EdgeInsets.only(right: 5.0),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: AppColors.bargreen.withOpacity(1.0),
                              margin: const EdgeInsets.only(right: 5.0),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: AppColors.bodyTextGrey.withOpacity(0.25),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10.0),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: AppColors.bodyTextGrey.withOpacity(0.15),
                          width: 2.0,
                        ),
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          double quarterWidth = constraints.maxWidth / 4;
                          return Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                width: quarterWidth,
                                height: quarterWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                    color: AppColors.bodyTextGrey.withOpacity(0.25),
                                    width: 2.0,
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'lib/assets/images/bike.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                width: quarterWidth * 3,
                                height: quarterWidth,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivered your order',
                                      style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontFamily: 'bold',
                                      ),
                                    ),
                                    Text(
                                      'We deliver your goods to you in the shortest possible time',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.bodyTextGrey,
                                        fontFamily: 'regular',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 10.0),

                    Container(
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                'lib/assets/images/delivery.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
 
                            Container(
                              width: 150,
                              padding: const EdgeInsets.symmetric(horizontal: 0.5),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Johan Hown',
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontFamily: 'bold',
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    'Personal Courier',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.bodyTextGrey,
                                      fontFamily: 'regular',
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          Expanded(
                            child: Container(),
                          ),
                             Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                    color: AppColors.bodyTextGrey.withOpacity(0.25),
                                    width: 2.0,
                                  ),
                                ),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: const Opacity(
                              opacity: 0.5,
                              child: Icon(Icons.wifi_calling_3),
                            ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

