import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/functions/lunch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            fontSize: 16,
            text: '19.99\$',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
            child: CustomButton(
              onPressed: () {
                lunchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              fontSize: 16,
              text: getText(bookModel),
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avilable';
    } else {
      return 'Preview';
    }
  }
}
