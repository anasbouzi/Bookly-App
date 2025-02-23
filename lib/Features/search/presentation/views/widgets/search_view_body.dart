import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';
import 'search_resule_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text(
            'Best Seller', // نص لعرض عنوان الكتب الأكثر مبيعًا
            style: Styles.textStyle18, // تطبيق نمط النص
          ),
          SizedBox(height: 16),
          Expanded(
            child: SearchRsultListView(),
          ),
        ],
      ),
    );
  }
}
