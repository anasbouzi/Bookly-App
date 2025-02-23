import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailesView);
      },
      child: SizedBox(
        height: 125, // تحديد ارتفاع الحاوية
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4, // يحافظ على نسبة العرض إلى الارتفاع للصورة
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // تدوير زوايا الصورة
                  color: Colors
                      .red, // لون خلفية الحاوية (سيتم تجاوزه بواسطة الصورة)
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.book, //  مسار صورة
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 29.73), // إضافة تباعد أفقي
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // محاذاة العناصر إلى بداية العمود
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width *
                        .4, // تحديد العرض بالنسبة لحجم الشاشة
                    child: Text(
                      "Harry Potter and the Goblet of Fire", // عنوان الكتاب
                      maxLines: 2, // تحديد النص إلى سطرين
                      style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectralFine), // تطبيق نمط النص
                      overflow: TextOverflow
                          .ellipsis, // إضافة الحذف إذا تجاوز النص العرض المتاح
                    ),
                  ),
                  const SizedBox(height: 3), // إضافة تباعد عمودي
                  Text(
                    "J.K. Rowling", // اسم المؤلف
                    style: Styles.textStyle14.copyWith(
                        color: const Color(0xff707070)), // تطبيق نمط النص
                  ),
                  const SizedBox(height: 3), // إضافة تباعد عمودي
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // توزيع المساحة بالتساوي بين العناصر
                    children: [
                      Text(
                        "19.99 €", // السعر
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold), // تطبيق نمط النص
                      ),
                      const BookRating(), // عنصر مخصص لعرض تقييم الكتاب
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
