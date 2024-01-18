import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class DeatailItem extends StatefulWidget {
  const DeatailItem({super.key});

  @override
  State<DeatailItem> createState() => _DeatailItemState();
}

class _DeatailItemState extends State<DeatailItem> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.pureWhite,
        body: SafeArea(
          child: Column(),
        ),
      ),
    );
  }
}
