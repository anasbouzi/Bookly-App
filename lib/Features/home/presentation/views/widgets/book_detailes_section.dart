import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_detailes_appbar.dart';
import 'custom_book_item.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailesAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl: "https://www.google.com/imgres?q=flower&imgurl=https%3A%2F%2Fhips.hearstapps.com%2Fhmg-prod%2Fimages%2Fsacred-lotus-gettyimages-1143403162-646fa5a441f5d.jpg%3Fcrop%3D0.535xw%3A1.00xh%3B0.0519xw%2C0%26resize%3D980%3A*&imgrefurl=https%3A%2F%2Fwww.housebeautiful.com%2Flifestyle%2Fgardening%2Fg44004499%2Fprettiest-flowers-in-the-world%2F&docid=BdeHjjOhrzYfzM&tbnid=Sw-AnddrHWoAkM&vet=12ahUKEwjdvJ7Wht-LAxVPVaQEHbyxOhoQM3oECB0QAA..i&w=980&h=1221&hcb=2&ved=2ahUKEwjdvJ7Wht-LAxVPVaQEHbyxOhoQM3oECB0QAA",
          ),
        ),
        const SizedBox(height: 43),
        Text("The Ironn Flame",
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text("Rudyard kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(height: 16),
        const BookRating(
          count: 20,
          rating: 20,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BookAction(),
      ],
    );
  }
}
