import 'package:flutter/material.dart';

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
        //  child: BookListViewItem(bookModel: ,), // عنصر يمثل كتابًا في القائمة
        child: Text('anasm'),
        );
      },
    );
  }
}
