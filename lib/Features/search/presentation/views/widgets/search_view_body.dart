import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

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
          Expanded(child: SearchRsultListView()),
        ],
      ),
    );
  }
}

class SearchRsultListView extends StatelessWidget {
  const SearchRsultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true, // تأكد من أن القائمة تتقلص لتناسب المساحة المتاحة
      itemCount: 10, // عدد العناصر في القائمة
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
              vertical: 10, horizontal: 10), // إضافة تباعد عمودي وأفقي
          child: BookListViewItem(), // عنصر يمثل كتابًا في القائمة
        );
      },
    );
  }
}
