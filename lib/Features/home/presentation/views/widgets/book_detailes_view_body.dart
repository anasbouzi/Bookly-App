import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'book_rating.dart';
import 'custom_book_detailes_appbar.dart';
import 'custom_book_item.dart';
import 'similar_books_list_view.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const CustomBookDetailesAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const CustomBookImage(),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 37),
                const BookAction(),
                const Expanded(child: SizedBox(height: 40)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
