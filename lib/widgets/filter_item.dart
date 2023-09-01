import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FilterItem extends StatefulWidget {
  final String text;
  final String iconpath;

  FilterItem(this.text, this.iconpath);

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  final height = Get.height;

  final width = Get.width;
  bool isSelected = false;

  void press() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
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
          color: isSelected ? const Color(0xFF7D23E0) : Colors.white,
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
          mainAxisAlignment: widget.iconpath != ''
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                widget.text,
                style: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xFF7D23E0),
                  fontSize: 14,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: FontWeight.w400,
                  height: 1.21,
                  letterSpacing: 0.14,
                ),
              ),
            ),
            if (widget.iconpath != "")
              SvgPicture.asset(
                widget.iconpath,
                height: height * 0.02,
                color: isSelected ? Colors.white : const Color(0xFF7D23E0),
              ),
          ],
        ),
      ),
    );
  }
}
