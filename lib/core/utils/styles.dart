import 'package:flutter/material.dart';
import 'package:bookly/constants.dart';

abstract class Styles {
  // تعريف أنماط النصوص المختلفة
  static const textStyle14 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectralFine, // استخدام خط محدد من الثوابت
  );
}
