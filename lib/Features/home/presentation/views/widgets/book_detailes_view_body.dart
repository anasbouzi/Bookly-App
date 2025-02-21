import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_book_detailes_appbar.dart';
import 'custom_book_item.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailesAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: const CustomBookImage(),
        ),
      ],
    );
  }
}
