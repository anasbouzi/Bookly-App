import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_meassage.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height *
                .3, // تحديد ارتفاع بالنسبة لحجم الشاشة
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal, // تحديد اتجاه التمرير كأفقي
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.only(
                      right: 10), // إضافة تباعد أفقي بين العناصر
                  child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ), // عنصر مخصص يمثل الكتاب المميز في القائمة
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMeassage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
