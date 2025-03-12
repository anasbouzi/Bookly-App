import 'package:equatable/equatable.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  const SearchSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class SearchFailure extends SearchState {
  final String errMessage;

  const SearchFailure(this.errMessage);

  @override
  List<Object> get props => [errMessage];
}