import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final HomeRepo homeRepo;

  SearchCubit(this.homeRepo) : super(SearchInitial());

  Future<void> searchBooks(String query) async {
    if (query.isEmpty) {
      emit(const SearchSuccess([])); // إذا كان البحث فارغًا، نعيد قائمة فارغة
      return;
    }

    emit(SearchLoading());

    var result = await homeRepo.fetchSearchedBooks(query: query);

    result.fold(
      (failure) {
        emit(SearchFailure(failure.errMessage));
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}