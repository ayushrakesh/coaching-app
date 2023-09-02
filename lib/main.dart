import 'package:coaching/data/coaching.dart';
import 'package:coaching/widgets/coaching.dart';
import 'package:coaching/widgets/filter_item.dart';
import 'package:coaching/widgets/sort-card-item.dart';
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

  bool issort = false;
  bool is2km = false;
  bool isJEE = false;
  bool isPhysics = false;
  bool isChemistry = false;
  bool isMaths = false;

  bool rel = false;
  bool dis = false;
  bool pri = false;
  bool rating = false;

  bool oneSortSelected = false;
  bool notAnySortSelected = true;

  List searchedcoachings = [];

  List lessthan2coachings = [];
  List jeecoachings = [];
  List chemistrycoachings = [];
  List mathscoachings = [];
  List physicscoachings = [];

  List relcoachings = [];
  List pricecoachings = [];
  List discoachings = [];
  List ratingcoachings = [];

  List finallist = [];
  List temp = [];

  List l = [];

  void filter2km() {
    if (is2km) {
      setState(() {
        lessthan2coachings =
            coachings.where((element) => element['distance'] < 2).toList();
      });
    } else {
      setState(() {
        lessthan2coachings = [];
      });
    }
    setState(() {
      temp = [
        ...lessthan2coachings,
        ...chemistrycoachings,
        ...mathscoachings,
        ...jeecoachings,
        ...physicscoachings
      ];
    });

    print('<2km   ${lessthan2coachings.length}');
    print(lessthan2coachings);
  }

  void filterJEE() {
    if (isJEE) {
      setState(() {
        jeecoachings = coachings
            .where((element) => (element['subjects'] as List).contains('JEE'))
            .toList();
      });
    } else {
      setState(() {
        jeecoachings = [];
      });
    }
    setState(() {
      temp = [
        ...lessthan2coachings,
        ...chemistrycoachings,
        ...mathscoachings,
        ...jeecoachings,
        ...physicscoachings
      ];
    });

    print('JEE ${jeecoachings.length}');
    print(jeecoachings);
  }

  void filterChem() {
    if (isChemistry) {
      setState(() {
        chemistrycoachings = coachings
            .where((element) =>
                (element['subjects'] as List).contains('CHEMISTRY'))
            .toList();
      });
    } else {
      setState(() {
        chemistrycoachings = [];
      });
    }
    setState(() {
      temp = [
        ...lessthan2coachings,
        ...chemistrycoachings,
        ...mathscoachings,
        ...jeecoachings,
        ...physicscoachings
      ];
    });

    print('Chem ${chemistrycoachings.length}');
    print(chemistrycoachings);
  }

  void filterMaths() {
    if (isMaths) {
      setState(() {
        mathscoachings = coachings
            .where((element) => (element['subjects'] as List).contains('MATHS'))
            .toList();
      });
    } else {
      setState(() {
        mathscoachings = [];
      });
    }

    setState(() {
      temp = [
        ...lessthan2coachings,
        ...chemistrycoachings,
        ...mathscoachings,
        ...jeecoachings,
        ...physicscoachings
      ];
    });

    print('Maths ${mathscoachings.length}');
    print(mathscoachings);
  }

  void filterPhy() {
    if (isPhysics) {
      setState(() {
        physicscoachings = coachings
            .where(
                (element) => (element['subjects'] as List).contains('PHYSICS'))
            .toList();
      });
    } else {
      setState(() {
        physicscoachings = [];
      });
    }

    setState(() {
      temp = [
        ...lessthan2coachings,
        ...chemistrycoachings,
        ...mathscoachings,
        ...jeecoachings,
        ...physicscoachings
      ];
    });

    print('Physics ${physicscoachings.length}');
    print(physicscoachings);
  }

  void filter() {
    if (is2km) {
      setState(() {
        lessthan2coachings = searchedcoachings
            .where((element) => element['distance'] < 2)
            .toList();
      });

      temp = lessthan2coachings;
      finallist = temp;
    }

    if (isPhysics) {
      setState(() {
        physicscoachings = searchedcoachings
            .where(
                (element) => (element['subjects'] as List).contains('PHYSICS'))
            .toList();
      });

      temp = physicscoachings;
      finallist = temp;
    }
    if (isChemistry) {
      setState(() {
        chemistrycoachings = searchedcoachings
            .where((element) =>
                (element['subjects'] as List).contains('CHEMISTRY'))
            .toList();
      });

      temp = chemistrycoachings;
      finallist = temp;
    }
    if (isMaths) {
      setState(() {
        mathscoachings = searchedcoachings
            .where((element) => (element['subjects'] as List).contains('MATHS'))
            .toList();
      });

      temp = mathscoachings;
      finallist = temp;
    }
    if (isJEE) {
      setState(() {
        jeecoachings = searchedcoachings
            .where((element) => (element['subjects'] as List).contains('JEE'))
            .toList();
      });

      temp = jeecoachings;
      finallist = temp;
    }
    if (!is2km && !isJEE && !isChemistry && !isMaths && !isPhysics) {
      setState(() {
        temp = searchedcoachings;
        finallist = temp;
      });
    }
  }

  void sort() {
    if (rel) {
      setState(() {
        relcoachings = searchedcoachings;
        relcoachings.sort(
          (a, b) => a['rating'].compareTo(b['rating']),
        );
      });
      temp = relcoachings.reversed.toList();
      finallist = temp;
    }
    if (dis) {
      setState(() {
        discoachings = searchedcoachings;
        discoachings.sort(
          (a, b) => a['distance'].compareTo(b['distance']),
        );
      });
      temp = discoachings;
      finallist = temp;
    }
    if (rating) {
      setState(() {
        ratingcoachings = searchedcoachings;

        ratingcoachings.sort(
          (a, b) => a['rating'].compareTo(b['rating']),
        );
      });
      temp = ratingcoachings.reversed.toList();
      finallist = temp;
    }
    if (pri) {
      setState(() {
        pricecoachings = searchedcoachings;

        pricecoachings.sort(
          (a, b) => a['discount'].compareTo(b['discount']),
        );
      });
      temp = pricecoachings.reversed.toList();
      finallist = temp;
    }

    if (!pri && !dis && !rating && !rel) {
      setState(() {
        temp = searchedcoachings;
        finallist = temp;
      });
    }
  }

  @override
  void initState() {
    searchedcoachings = coachings;
    finallist = coachings;
    super.initState();
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
          ),
          child: Column(
            children: [
              Gap(height * 0.02),
              TextField(
                controller: titleController,
                onChanged: (value) {
                  setState(() {
                    searchedcoachings = coachings
                        .where((element) => element['title']
                            .toLowerCase()
                            .contains(value.toLowerCase().trim()))
                        .toList();
                    temp = searchedcoachings;
                    finallist = temp;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search for JEE Mains Coaching ",
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
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FilterItem('Sort', 'assets/icons/arrow-down.svg', () {
                      setState(() {
                        issort = !issort;
                        isJEE = false;
                        isChemistry = false;
                        isPhysics = false;
                        isMaths = false;
                        is2km = false;
                      });
                    }, issort, false),
                    Gap(height * 0.01),
                    FilterItem('<2km', '', () {
                      setState(() {
                        is2km = !is2km;
                        isJEE = false;
                        isChemistry = false;
                        isPhysics = false;
                        isMaths = false;
                        issort = false;
                      });
                      filter();
                    }, is2km, false),
                    Gap(height * 0.01),
                    FilterItem('JEE', '', () {
                      setState(() {
                        isJEE = !isJEE;
                        is2km = false;
                        isChemistry = false;
                        isPhysics = false;
                        isMaths = false;
                        issort = false;
                      });
                      filter();
                    }, isJEE, false),
                    Gap(height * 0.01),
                    FilterItem('Chemistry', '', () {
                      setState(() {
                        isChemistry = !isChemistry;
                        is2km = false;
                        isJEE = false;
                        isPhysics = false;
                        isMaths = false;
                        issort = false;
                      });
                      filter();
                    }, isChemistry, true),
                    Gap(height * 0.01),
                    FilterItem('Maths', '', () {
                      setState(() {
                        isMaths = !isMaths;
                        is2km = false;
                        isJEE = false;
                        isPhysics = false;
                        isChemistry = false;
                        issort = false;
                      });
                      filter();
                    }, isMaths, false),
                    Gap(height * 0.010),
                    FilterItem('Physics', '', () {
                      setState(() {
                        isPhysics = !isPhysics;
                        is2km = false;
                        isJEE = false;
                        isChemistry = false;
                        isMaths = false;
                        issort = false;
                      });
                      filter();
                    }, isPhysics, false),
                  ],

                  // itemCount: filtersList.length,
                ),
              ),
              Gap(height * 0.02),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return Coaching(finallist[index]);
                        },
                        itemCount: finallist.length,
                      ),
                    ),
                    if (issort)
                      Positioned(
                        left: width * 0.02,
                        top: -height * 0.01,
                        child: Container(
                          width: 152,
                          // height: 138,
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05,
                            vertical: height * 0.01,
                          ),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF7D23E0)),
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
                              SortCardItem(
                                  press: () {
                                    setState(() {
                                      rel = !rel;
                                      pri = false;
                                      rating = false;
                                      dis = false;

                                      if (rel || pri || rating || dis) {
                                        notAnySortSelected = false;
                                      } else {
                                        oneSortSelected = true;
                                      }
                                    });
                                    sort();
                                  },
                                  rel: rel,
                                  text: 'Relevance'),
                              Gap(width * 0.002),
                              SortCardItem(
                                  press: () {
                                    setState(() {
                                      rel = false;
                                      pri = !pri;
                                      rating = false;
                                      dis = false;

                                      if (rel || pri || rating || dis) {
                                        notAnySortSelected = true;
                                      } else {
                                        oneSortSelected = true;
                                      }
                                    });

                                    sort();
                                  },
                                  price: pri,
                                  text: 'Price'),
                              Gap(width * 0.002),
                              SortCardItem(
                                  press: () {
                                    setState(() {
                                      rel = false;
                                      pri = false;
                                      rating = false;
                                      dis = !dis;

                                      if (rel || pri || rating || dis) {
                                        notAnySortSelected = true;
                                      } else {
                                        oneSortSelected = true;
                                      }
                                    });
                                    sort();
                                  },
                                  dis: dis,
                                  text: 'Distance'),
                              Gap(width * 0.002),
                              SortCardItem(
                                  press: () {
                                    setState(() {
                                      rating = !rating;
                                      pri = false;
                                      rel = false;
                                      dis = false;

                                      if (rel || pri || rating || dis) {
                                        notAnySortSelected = true;
                                      } else {
                                        oneSortSelected = true;
                                      }
                                    });
                                    sort();
                                  },
                                  rating: rating,
                                  text: 'Rating'),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
