import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(), // تعطيل التمرير الداخلي
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
