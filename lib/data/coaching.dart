import 'package:flutter/material.dart';

final List coachings = [
  {
    'id': 1,
    'distance': 8,
    'rating': 4.4,
    'title': 'Metro Coaching Center',
    'image': const AssetImage('assets/images/coaching.jpeg'),
    'discount': 20,
    'subjects': [
      'PHYSICS',
      'MATHS',
      'CHEMISTRY',
      'JEE',
    ],
    'students': 2,
    'location': 'Kalkaji , New Delhi'
  },
  {
    'id': 2,
    'distance': 3,
    'rating': 4.1,
    'title': 'Midas Taj Coaching Center',
    'image': const AssetImage('assets/images/coaching.jpeg'),
    'discount': 23,
    'subjects': [
      'PHYSICS',
      'MATHS',
      'CHEMISTRY',
      'JEE',
    ],
    'students': 0,
    'location': 'Kalkaji , New Delhi'
  },
  {
    'id': 1,
    'distance': 10,
    'rating': 4.1,
    'title': 'Rankers Home',
    'image': const AssetImage('assets/images/coaching.jpeg'),
    'discount': 25,
    'subjects': [
      'PHYSICS',
      'MATHS',
      'CHEMISTRY',
      'JEE',
    ],
    'students': 0,
    'location': 'Kalkaji , New Delhi'
  },
  {
    'id': 1,
    'distance': 1,
    'rating': 4.3,
    'title': 'Career Academy',
    'image': const AssetImage('assets/images/coaching.jpeg'),
    'discount': 18,
    'subjects': [
      'PHYSICS',
      'MATHS',
      'CHEMISTRY',
      'JEE',
    ],
    'students': 2,
    'location': 'Kalkaji , New Delhi'
  },
  {
    'id': 1,
    'distance': 1,
    'rating': 4.3,
    'title': 'Metro Coaching Center',
    'image': const AssetImage('assets/images/coaching.jpeg'),
    'discount': 20,
    'subjects': [
      'PHYSICS',
      'MATHS',
      'CHEMISTRY',
      'JEE',
    ],
    'students': 2,
    'location': 'Kalkaji , New Delhi'
  },
];

final List filtersList = [
  {
    'text': 'Filters',
    'iconpath': 'assets/icons/filter.svg',
  },
  {
    'text': 'Sort',
    'iconpath': 'assets/icons/arrow-down.svg',
  },
  {
    'text': '<2km',
    'iconpath': '',
  },
  {
    'text': 'JEE',
    'iconpath': '',
  },
  {
    'text': 'Chemistry',
    'iconpath': '',
  },
  {
    'text': 'Maths',
    'iconpath': '',
  },
  {
    'text': 'Physics',
    'iconpath': '',
  },
];
