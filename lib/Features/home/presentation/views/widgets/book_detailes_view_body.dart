import 'package:flutter/material.dart';

import 'custom_book_detailes_appbar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBookDetailesAppBar(),
      ],
    );
  }
}
