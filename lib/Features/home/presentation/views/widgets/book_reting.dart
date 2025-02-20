import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_rate_rounded, // رمز النجمة للتقييم
          color: kIconStarColor, // لون النجمة
        ),
        const SizedBox(width: 4.8), // إضافة تباعد أفقي
        const Text("4.8", style: Styles.textStyle16), // عرض تقييم الكتاب
        const SizedBox(width: 5), // إضافة تباعد أفقي
        Text(
          '(2390)', // عدد المراجعات
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070), // لون النص
          ),
        ),
      ],
    );
  }
}
