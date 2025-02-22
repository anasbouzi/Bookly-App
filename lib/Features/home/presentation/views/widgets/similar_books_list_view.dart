import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *
          .15, // تحديد ارتفاع بالنسبة لحجم الشاشة
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // تحديد اتجاه التمرير كأفقي
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 5), // إضافة تباعد أفقي بين العناصر
            child: CustomBookImage(), // عنصر مخصص يمثل الكتاب المميز في القائمة
          );
        },
      ),
    );
  }
}
