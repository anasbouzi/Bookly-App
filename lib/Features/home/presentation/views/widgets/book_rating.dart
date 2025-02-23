import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 16,
          Icons.star_rate_rounded, // رمز النجمة للتقييم
          color: kIconStarColor, // لون النجمة
        ),
        const SizedBox(width: 4.8), // إضافة تباعد أفقي
        const Text("4.8", style: Styles.textStyle16), // عرض تقييم الكتاب
        const SizedBox(width: 5), // إضافة تباعد أفقي
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)', // عدد المراجعات
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.w600) // لون النص
            ,
          ),
        ),
      ],
    );
  }
}
