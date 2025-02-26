import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_meassage.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'newest_books_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics:
                const NeverScrollableScrollPhysics(), // تعطيل التمرير الداخلي
            shrinkWrap: true, // تأكد من أن القائمة تتقلص لتناسب المساحة المتاحة
            itemCount: state.books.length, // عدد العناصر في القائمة
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 10), // إضافة تباعد عمودي وأفقي
                child: NewestBookListViewItem(
                  bookModel: state.books[index],
                ), // عنصر يمثل كتابًا في القائمة
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMeassage(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
