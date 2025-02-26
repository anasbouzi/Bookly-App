import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class NewestBookListViewItem extends StatelessWidget {
  const NewestBookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailesView);
      },
      child: SizedBox(
        height: 135, // تحديد ارتفاع الحاوية
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),

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
                      bookModel.volumeInfo.title!, // عنوان الكتاب
                      maxLines: 2, // تحديد النص إلى سطرين
                      style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectralFine), // تطبيق نمط النص
                      overflow: TextOverflow
                          .ellipsis, // إضافة الحذف إذا تجاوز النص العرض المتاح
                    ),
                  ),
                  const SizedBox(height: 3), // إضافة تباعد عمودي
                  Text(
                    bookModel.volumeInfo.authors![0], // اسم المؤلف
                    style: Styles.textStyle14.copyWith(
                        color: const Color(0xff707070)), // تطبيق نمط النص
                  ),
                  const SizedBox(height: 3), // إضافة تباعد عمودي
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // توزيع المساحة بالتساوي بين العناصر
                    children: [
                      Text(
                        "Free", // السعر
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold), // تطبيق نمط النص
                      ),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating??0,
                        count: bookModel.volumeInfo.ratingsCount??0,
                      ), // عنصر مخصص لعرض تقييم الكتاب
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




// AspectRatio(
//               aspectRatio: 2.5 / 4, // يحافظ على نسبة العرض إلى الارتفاع للصورة
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15), // تدوير زوايا الصورة
//                   color: Colors
//                       .red, // لون خلفية الحاوية (سيتم تجاوزه بواسطة الصورة)
//                   image: const DecorationImage(
//                     fit: BoxFit.fill,
//                     image: AssetImage(
//                       AssetsData.book, //  مسار صورة
//                     ),
//                   ),
//                 ),
//               ),
//             )