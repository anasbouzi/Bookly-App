import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, // يحافظ على نسبة العرض إلى الارتفاع للصورة
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), // تدوير زوايا الصورة
          // color: Colors.red, // لون خلفية الحاوية (تم التعليق على السطر)
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.book, // مسار صورة الأصول
            ),
          ),
        ),
      ),
    );
  }
}
