// استيراد المكتبات اللازمة للعمل مع النماذج، المستودعات، التعامل مع الأخطاء، وطلبات API
import 'package:bookly/Features/home/data/models/book_model/book_model.dart'; // نموذج الكتاب
import 'package:bookly/Features/home/data/repos/home_repo.dart'; // تعريف واجهة المستودع
import 'package:bookly/core/errors/failure.dart'; // كائن الفشل للتعامل مع الأخطاء
import 'package:bookly/core/utils/api_request.dart'; // أداة مساعدة لطلبات API
import 'package:dartz/dartz.dart'; // مكتبة للتعامل مع Either (نجاح أو فشل)
import 'package:dio/dio.dart'; // مكتبة Dio لإجراء طلبات HTTP

// تعريف كلاس HomeRepoImpl الذي ينفذ واجهة HomeRepo
class HomeRepoImpl implements HomeRepo {
  // متغير لتخزين كائن ApiRequest الذي يُستخدم لإجراء طلبات API
  final ApiRequest apiRequest;

  // المُنشئ (Constructor) الذي يأخذ كائن ApiRequest كمعامل ويخزنه في المتغير
  HomeRepoImpl(this.apiRequest);

  // تنفيذ دالة fetchNewestBooks المعرفة في واجهة HomeRepo
  // الهدف: جلب قائمة الكتب الأحدث من API
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    // استخدام try-catch للتعامل مع الأخطاء أثناء استدعاء API
    try {
      // إجراء طلب GET إلى نقطة نهاية API لجلب الكتب المتعلقة بالبرمجة
      var data = await apiRequest.get(
          endPoint:
              "volumes?q=computer science"); // نقطة النهاية: استعلام عن كتب البرمجة
      // ملاحظة: السطر المعلق كان يحتوي على تكرار ومعاملات إضافية مثل Filtering وSorting
      // "volumes?q=subject:Programmingvolumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest"

      // إنشاء قائمة فارغة لتخزين الكتب التي سيتم تحليلها من الاستجابة
      List<BookModel> books = [];

      // التكرار على العناصر في 'items' من استجابة API
      // 'items' هو مفتاح متوقع في JSON يحتوي على قائمة الكتب
      for (var item in data['items']) {
        // تحويل كل عنصر JSON إلى كائن BookModel وإضافته إلى القائمة
        books.add(BookModel.fromJson(item));
      }

      // إرجاع النجاح باستخدام Right مع قائمة الكتب
      // Right يعني أن العملية نجحت ويحتوي على البيانات
      return right(books);
    } catch (e) {
      // التعامل مع الأخطاء التي قد تحدث أثناء الطلب أو التحليل
      if (e is DioException) {
        // إذا كان الخطأ من نوع DioException (خطأ متعلق بـ HTTP)
        // إرجاع Left مع كائن ServerFailure مُنشأ من تفاصيل الخطأ
        return left(ServerFailure.fromDioError(e));
      }
      // إذا كان الخطأ من نوع آخر، إرجاع Left مع رسالة الخطأ كنص
      return left(ServerFailure(e.toString()));
    }
  }

  // تنفيذ دالة fetchFeaturedBooks المعرفة في واجهة HomeRepo
  // الهدف: جلب قائمة الكتب المميزة من API
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    // استخدام try-catch للتعامل مع الأخطاء أثناء استدعاء API
    try {
      // إجراء طلب GET إلى نقطة نهاية API لجلب كتب البرمجة (بدون تصفية إضافية)
      var data = await apiRequest.get(
          endPoint:
              "volumes?q=subject:Programming"); // نقطة النهاية: استعلام عن كتب البرمجة

      // إنشاء قائمة فارغة لتخزين الكتب المميزة
      List<BookModel> books = [];

      // التكرار على العناصر في 'items' من استجابة API
      // يفترض أن 'items' يحتوي على قائمة الكتب في JSON
      for (var item in data['items']) {
        // تحويل كل عنصر JSON إلى كائن BookModel وإضافته إلى القائمة
        books.add(BookModel.fromJson(item));
      }

      // إرجاع النجاح باستخدام Right مع قائمة الكتب المميزة
      return right(books);
    } catch (e) {
      // التعامل مع الأخطاء التي قد تحدث أثناء الطلب أو التحليل
      if (e is DioException) {
        // إذا كان الخطأ من نوع DioException، إرجاع فشل مخصص من Dio
        return left(ServerFailure.fromDioError(e));
      }
      // إذا كان الخطأ عامًا، إرجاع رسالة الخطأ كنص
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      // إجراء طلب GET إلى نقطة نهاية API لجلب كتب البرمجة (بدون تصفية إضافية)
      var data = await apiRequest.get(
          endPoint:
              "volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=relevance"); // نقطة النهاية: استعلام عن كتب البرمجة

      // إنشاء قائمة فارغة لتخزين الكتب المميزة
      List<BookModel> books = [];

      // التكرار على العناصر في 'items' من استجابة API
      // يفترض أن 'items' يحتوي على قائمة الكتب في JSON
      for (var item in data['items']) {
        // تحويل كل عنصر JSON إلى كائن BookModel وإضافته إلى القائمة
        books.add(BookModel.fromJson(item));
      }

      // إرجاع النجاح باستخدام Right مع قائمة الكتب المميزة
      return right(books);
    } catch (e) {
      // التعامل مع الأخطاء التي قد تحدث أثناء الطلب أو التحليل
      if (e is DioException) {
        // إذا كان الخطأ من نوع DioException، إرجاع فشل مخصص من Dio
        return left(ServerFailure.fromDioError(e));
      }
      // إذا كان الخطأ عامًا، إرجاع رسالة الخطأ كنص
      return left(ServerFailure(e.toString()));
    }
  }
}
