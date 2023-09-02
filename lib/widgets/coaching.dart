import 'package:coaching/widgets/subject.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Coaching extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final Map<String, dynamic> coaching;

  Coaching(this.coaching);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 338,
      padding: EdgeInsets.symmetric(
        vertical: height * 0.018,
        horizontal: height * 0.018,
      ),
      height: height * 0.26,

      margin: EdgeInsets.only(bottom: height * 0.02),
      decoration: ShapeDecoration(
        color: const Color(0xFFF6EFFE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: width * 0.42,
                height: width * 0.42,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: coaching['image'],
                    fit: BoxFit.cover,
                    opacity: 0.3,
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(-0.00, -1.00),
                    end: const Alignment(0, 1),
                    colors: [
                      Colors.white.withOpacity(0),
                      Color.fromARGB(228, 125, 35, 224),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                bottom: height * 0.02,
                left: width * 0.08,
                // right: width * 0.05,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/location.svg'),
                    Gap(height * 0.005),
                    Text(
                      coaching['location'],
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9200000166893005),
                        fontSize: 10,
                        fontFamily: 'Avenir Next LT Pro',
                        fontWeight: FontWeight.w600,
                        height: 1.50,
                        letterSpacing: 0.10,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(height * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 135,
                child: Text(
                  coaching['title'],
                  style: const TextStyle(
                    color: Color(0xFF272727),
                    fontSize: 16,
                    fontFamily: 'Avenir Next LT Pro',
                    fontWeight: FontWeight.w700,
                    height: 1.06,
                    letterSpacing: 0.16,
                  ),
                ),
              ),
              Gap(height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/star.svg'),
                  Gap(height * 0.005),
                  Text(
                    coaching['rating'].toString(),
                    style: const TextStyle(
                      color: Color(0xFF414141),
                      fontSize: 12,
                      fontFamily: 'Avenir Next LT Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.42,
                      letterSpacing: 0.12,
                    ),
                  ),
                  Gap(height * 0.01),
                  Container(
                    width: 3,
                    height: 3,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF414141),
                      shape: OvalBorder(),
                    ),
                  ),
                  Gap(height * 0.005),
                  Text(
                    '${coaching['distance'].toString()} kms away',
                    style: const TextStyle(
                      color: Color(0xFF414141),
                      fontSize: 12,
                      fontFamily: 'Avenir Next LT Pro',
                      fontWeight: FontWeight.w400,
                      height: 1.42,
                      letterSpacing: 0.12,
                    ),
                  )
                ],
              ),
              Gap(height * 0.020),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (coaching['subjects'][0] != '')
                    Subject(coaching['subjects'][0]),
                  Gap(height * 0.01),
                  if (coaching['subjects'][1] != '')
                    Subject(coaching['subjects'][1]),
                ],
              ),
              Gap(height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (coaching['subjects'][2] != '')
                    Subject(coaching['subjects'][2]),
                  Gap(height * 0.01),
                  if (coaching['subjects'][3] != '')
                    Subject(coaching['subjects'][3]),
                ],
              ),
              Gap(height * 0.02),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                  vertical: height * 0.001,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff7D23E0),
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Text(
                  '${coaching['discount'].toString()}% OFF',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Avenir Next LT Pro',
                    fontWeight: FontWeight.w600,
                    height: 1.70,
                    letterSpacing: 0.10,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
