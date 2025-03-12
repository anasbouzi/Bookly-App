import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_resule_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:get_it/get_it.dart';
import 'custom_search_text_field.dart';

final getIt = GetIt.instance;

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt<HomeRepoImpl>()),
      child: Builder(
        builder: (context) {
          // نستخدم context داخل BlocProvider
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(
                  onSearch: (query) {
                    context.read<SearchCubit>().searchBooks(query);
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Search Results',
                  style: Styles.textStyle18,
                ),
                const SizedBox(height: 16),
                const Expanded(
                  child: SearchResultListView(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
