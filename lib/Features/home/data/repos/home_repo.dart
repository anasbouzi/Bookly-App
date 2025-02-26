import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // دالة لجلب قائمة الكتب الأكثر مبيعًا
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  // دالة لجلب قائمة الكتب المميزة
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
