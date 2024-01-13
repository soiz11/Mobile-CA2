import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Image.asset(
          'lib/assets/images/c_choco.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: AppColors.starYellow,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "4.8",
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: "Bold",
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 100, // Adjust the top position as needed
          left: 10,
          child: Column(
            children: [
              Text(
                "Cappuccino",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 16,
                  fontFamily: "Bold",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
