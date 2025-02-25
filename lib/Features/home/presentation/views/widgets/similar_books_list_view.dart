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
            child: CustomBookImage(
              imageUrl:
                  "https://www.google.com/imgres?q=flower&imgurl=https%3A%2F%2Fhips.hearstapps.com%2Fhmg-prod%2Fimages%2Fsacred-lotus-gettyimages-1143403162-646fa5a441f5d.jpg%3Fcrop%3D0.535xw%3A1.00xh%3B0.0519xw%2C0%26resize%3D980%3A*&imgrefurl=https%3A%2F%2Fwww.housebeautiful.com%2Flifestyle%2Fgardening%2Fg44004499%2Fprettiest-flowers-in-the-world%2F&docid=BdeHjjOhrzYfzM&tbnid=Sw-AnddrHWoAkM&vet=12ahUKEwjdvJ7Wht-LAxVPVaQEHbyxOhoQM3oECB0QAA..i&w=980&h=1221&hcb=2&ved=2ahUKEwjdvJ7Wht-LAxVPVaQEHbyxOhoQM3oECB0QAA",
            ), // عنصر مخصص يمثل الكتاب المميز في القائمة
          );
        },
      ),
    );
  }
}
