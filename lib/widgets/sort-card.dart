import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SortCard extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final bool rel;
  final bool dis;
  final bool price;
  final bool rating;
  final VoidCallback press;
  SortCard({
    this.dis = false,
    this.price = false,
    this.rating = false,
    this.rel = false,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      // height: 138,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.02,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
          borderRadius: BorderRadius.circular(18),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 2,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
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
                      color: rel ? Color(0xFF7D23E0) : Colors.white,
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Gap(height * 0.02),
              Text(
                'Relevance',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: rel ? FontWeight.w600 : FontWeight.w400,
                  height: 1.71,
                ),
              )
            ],
          ),
          Gap(height * 0.01),
          Row(
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
                    decoration: const ShapeDecoration(
                      color: Color(0xFF7D23E0),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Gap(height * 0.02),
              const Text(
                'Distance',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: FontWeight.w600,
                  height: 1.71,
                ),
              )
            ],
          ),
          Gap(height * 0.01),
          Row(
            children: [
              InkWell(
                onTap: press,
                child: Container(
                  width: 16,
                  padding: EdgeInsets.all(width * 0.003),
                  height: 16,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF7D23E0)),
                    ),
                  ),
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF7D23E0),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Gap(height * 0.02),
              const Text(
                'Price',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: FontWeight.w600,
                  height: 1.71,
                ),
              )
            ],
          ),
          Gap(height * 0.01),
          Row(
            children: [
              InkWell(
                onTap: press,
                child: Container(
                  width: 16,
                  padding: EdgeInsets.all(width * 0.003),
                  height: 16,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF7D23E0)),
                    ),
                  ),
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF7D23E0),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Gap(height * 0.02),
              const Text(
                'Rating',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: FontWeight.w600,
                  height: 1.71,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
