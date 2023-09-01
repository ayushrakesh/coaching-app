import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FilterItem extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final String text;
  final String iconpath;

  FilterItem(this.text, this.iconpath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // margin: EdgeInsets.only(
        //   right: height * 0.01,
        // ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.005,
        ),
        width: width * 0.2,
        // height: 29,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0.50,
              color: Color(0xFF7D23E0),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: iconpath != ''
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFF7D23E0),
                  fontSize: 14,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: FontWeight.w400,
                  height: 1.21,
                  letterSpacing: 0.14,
                ),
              ),
            ),
            if (iconpath != "")
              SvgPicture.asset(
                iconpath,
                height: height * 0.02,
                color: const Color(0xFF7D23E0),
              ),
          ],
        ),
      ),
    );
  }
}
