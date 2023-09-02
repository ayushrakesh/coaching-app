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
      '',
      '',
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
      '',
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
      '',
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
      '',
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
    'text': 'Apply Filters',
    'isSelected': false,
    'iconpath': 'assets/icons/filter.svg',
  },
  {
    'text': 'Sort',
    'isSelected': false,
    'iconpath': 'assets/icons/arrow-down.svg',
  },
  {
    'text': '<2km',
    'isSelected': false,
    'iconpath': '',
  },
  {
    'text': 'JEE',
    'isSelected': false,
    'iconpath': '',
  },
  {
    'text': 'Chemistry',
    'isSelected': false,
    'iconpath': '',
  },
  {
    'text': 'Maths',
    'isSelected': false,
    'iconpath': '',
  },
  {
    'text': 'Physics',
    'isSelected': false,
    'iconpath': '',
  },
];
