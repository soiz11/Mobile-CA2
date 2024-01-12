import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/components/custom_btn.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.pureWhite,
        body: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                child: CustomBtn(
                  btnText: "Get Started",
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => StillDev()),
                    // );
                  },

                  //widthFactor:0.5 or 0.6,
                  //heightAmount:35,
                  //fontSize:14,
                  //btnColor:AppColors.btnGrey or AppColors.pureWhite,
                  //btnTextColor:AppColors.textBlack or AppColors.pureWhite,
                  //

                  // isIcon: true,
                  // icon: Icons.camera_alt,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
