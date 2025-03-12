import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/manager/search_cubit/search_state.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SearchSuccess) {
          if (state.books.isEmpty) {
            return const Center(child: Text('No results found'));
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              final book = state.books[index];
              return InkWell(
                onTap: () {
                  context.push(
                    AppRouter.kBookDetailesView,
                    extra: book,
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      // صورة الغلاف (إذا كانت متاحة)
                      SizedBox(
                        width: 50,
                        height: 75,
                        child: book.volumeInfo.imageLinks?.thumbnail != null
                            ? Image.network(
                                book.volumeInfo.imageLinks!.thumbnail)
                            : const Placeholder(),
                      ),
                      const SizedBox(width: 10),
                      // عنوان الكتاب واسم المؤلف
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.volumeInfo.title ?? 'No title available',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            if (book.volumeInfo.authors != null)
                              Text(
                                book.volumeInfo.authors!.join(', '),
                                style: const TextStyle(color: Colors.grey),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const Center(child: Text('Start typing to search...'));
      },
    );
  }
}
