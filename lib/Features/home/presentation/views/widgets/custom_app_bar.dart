import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height *
            .035, // تحديد النسبة العمودية بناءً على نسبة من ارتفاع الشاشة
        horizontal: MediaQuery.of(context).size.height *
            .025, // تحديد النسبة الأفقية بناءً على نسبة من ارتفاع الشاشة
      ), //vertical: 30 , horizontal:15
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo, // اضافة مسار صورة
            height: 16, // تحديد ارتفاع الصورة
          ),
          const Spacer(), // إضافة مسافة فارغة قابلة للتوسع بين العناصر
          InkWell(
            onTap: () {}, // تعيين دالة الاستجابة عند النقر على الصورة
            child: Image.asset(
              AssetsData.icSearch, // تحميل صورة أيقونة البحث من الأصول
              height: 24, // تحديد ارتفاع الصورة
            ),
          ),
        ],
      ),
    );
  }
}
