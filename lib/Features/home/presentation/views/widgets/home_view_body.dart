import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'best_seller_list_view_item.dart';
import 'featured_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBookListView(),
            SizedBox(height: 40),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            SizedBox(height: 23),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}
