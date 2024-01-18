import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String imgUrl;
  final String rating;
  final String description;
  final String price;
  final VoidCallback? onTap;

  const Tile({
    Key? key,
    required this.imgUrl,
    required this.rating,
    required this.description,
    required this.price,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: AppColors.pureWhite,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Image.asset(
            imgUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: AppColors.starYellow,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                    color: AppColors.pureWhite,
                    fontFamily: "Bold",
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 150, // Adjust the top position as needed
            left: 10,
            child: Column(
              children: [
                Text(
                  "Cappuccino",
                  style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 18,
                    fontFamily: "Bold",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 178, // Adjust the top position as needed
            left: 12,
            child: Column(
              children: [
                Text(
                  description,
                  style: const TextStyle(
                    color: AppColors.bodyTextGrey,
                    fontSize: 14,
                    fontFamily: "Regular",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 206, // Adjust the top position as needed
            left: 12,
            child: Column(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 22,
                    fontFamily: "Bold",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 205.0,
            right: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 35,
                  height: 35,
                  color: AppColors.btnBrown,
                  child: const Icon(
                    Icons.add,
                    color: AppColors.pureWhite,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
