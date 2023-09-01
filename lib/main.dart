import 'package:coaching/data/coaching.dart';
import 'package:coaching/widgets/coaching.dart';
import 'package:coaching/widgets/filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final height = Get.height;
  final width = Get.width;

  final titleController = TextEditingController();

  String? title;

  void press() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coaching',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(
              left: width * 0.04,
              bottom: height * 0.01,
              top: height * 0.01,
            ),
            child: Container(
              width: 36,
              height: 36,
              decoration: const ShapeDecoration(
                color: Color(0xFF7D23E0),
                shape: OvalBorder(),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                ),
              ),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'For JEE-Mains',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Avenir Next LT Pro',
                fontWeight: FontWeight.w600,
                height: 1.06,
                letterSpacing: 0.16,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: width * 0.04,
            right: width * 0.04,
            // top: height * 0.02,
            // horizontal: width * 0.04,
          ),
          child: Column(
            children: [
              Gap(height * 0.02),
              TextField(
                controller: titleController,
                onChanged: (vlaue) {
                  setState(() {
                    title = vlaue;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search for UPSC Coaching ",
                  hintStyle: const TextStyle(
                    color: Color(0xFF787878),
                    fontSize: 14,
                    fontFamily: 'Avenir Next LT Pro',
                    fontWeight: FontWeight.w400,
                    height: 1.71,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: width * 0.01,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.75,
                      color: Color(0xFFBDBDBD),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/icons/search.svg'),
                      Gap(height * 0.01),
                      SvgPicture.asset(
                        'assets/icons/line.svg',
                        color: Colors.grey,
                      ),
                      Gap(height * 0.01),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: SvgPicture.asset('assets/icons/microphone.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(height * 0.02),
              SizedBox(
                height: height * 0.04,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Gap(height * 0.01),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => FilterItem(
                    filtersList[index]['text'],
                    filtersList[index]['iconpath'],
                  ),
                  itemCount: filtersList.length,
                ),
              ),
              Gap(height * 0.02),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => Coaching(coachings[index]),
                  itemCount: coachings.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
