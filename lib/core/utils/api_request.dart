import 'package:dio/dio.dart';

class ApiRequest {
  // عنوان URL الأساسي لطلب البيانات من Google Books API
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  // كائن Dio لإجراء طلبات الشبكة
  final Dio _dio;

  // Constructor يأخذ كائن Dio كمعامل
  ApiRequest(this._dio);

  // دالة لجلب البيانات من API
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    // إجراء طلب GET إلى العنوان المحدد
    var response = await _dio.get("$_baseUrl$endPoint");
    // إرجاع البيانات المستلمة
    return response.data;
  }
}
