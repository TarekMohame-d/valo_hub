import 'package:flutter/material.dart';

class RolesItem extends StatelessWidget {
  const RolesItem({
    super.key,
    required this.color,
    required this.img,
  });

  final Color color;
  final String img;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 6,
      height: screenWidth / 6,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Image.asset(
          img,
          fit: BoxFit.contain,
          height: (screenWidth / 6) / 2,
          color: Colors.white,
        ),
      ),
    );
  }
}
