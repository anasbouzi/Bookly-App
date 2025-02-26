import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_detailes_view_body.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    super.initState();
    // التحقق من وجود categories وأنها غير فارغة
    final category = widget.bookModel.volumeInfo.categories?.isNotEmpty == true
        ? widget.bookModel.volumeInfo.categories![0]
        : 'General'; // قيمة افتراضية
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailesViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}