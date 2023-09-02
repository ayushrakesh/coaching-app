import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SortCardItem extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final bool rel;
  final bool dis;
  final bool rating;
  final bool price;

  final VoidCallback press;
  final String text;

  SortCardItem(
      {this.rel = false,
      this.dis = false,
      this.price = false,
      this.rating = false,
      required this.press,
      required this.text});

  @override
  Widget build(BuildContext context) {
    bool g = rel || dis || price || rating;

    return Row(
      children: [
        InkWell(
          onTap: press,
          child: Container(
            width: 16,
            height: 16,
            padding: EdgeInsets.all(width * 0.003),
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 0.25, color: Color(0xFF7D23E0)),
              ),
            ),
            child: Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                color: g ? Color(0xFF7D23E0) : Colors.white,
                shape: OvalBorder(),
              ),
            ),
          ),
        ),
        Gap(height * 0.02),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Avenir Next LT Pro',
            fontWeight: g ? FontWeight.w600 : FontWeight.w400,
            height: 1.71,
          ),
        )
      ],
    );
  }
}
