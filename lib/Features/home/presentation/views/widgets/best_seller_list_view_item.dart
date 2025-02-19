import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_reting.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.book,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 29.73),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectralFine),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14
                      .copyWith(color: const Color(0xff707070)),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 €",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const RatingBook(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
