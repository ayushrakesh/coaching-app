import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Subject extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final String subject;

  Subject(this.subject);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 69,
      // height: 19,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.005,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.40, color: Color(0x777D23E0)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Text(
        subject,
        style: const TextStyle(
          color: Color(0xFF7D23E0),
          fontSize: 10,
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w600,
          height: 1,
          letterSpacing: 1.20,
        ),
      ),
    );
  }
}
