import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBtn extends StatelessWidget {
  final Color btnColor;
  final Color btnTextColor;
  final String btnText;
  final double widthFactor;
  final double heightAmount;
  final double fontSize;
  final double marginX;
  final double marginY;

  final Function()? onTap;
  IconData? icon;
  bool? isIcon;

  CustomBtn({
    super.key,
    this.btnColor = AppColors.btnBrown,
    this.btnTextColor = AppColors.pureWhite,
    required this.btnText,
    this.widthFactor = 1.0,
    this.heightAmount = 60,
    this.fontSize = 16,
    this.marginX = 30,
    this.marginY = 12,
    required this.onTap,
    this.icon,
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: heightAmount,
        width: MediaQuery.of(context).size.width * widthFactor,
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(
          vertical: marginY,
          horizontal: marginX,
        ),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Transform.translate(
            offset: const Offset(0, 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  btnText,
                  style: TextStyle(
                    color: btnTextColor,
                    fontFamily: "Bold",
                    fontSize: fontSize,
                  ),
                ),
                isIcon == false
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0), // Adjust the left margin as needed
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 30,
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
