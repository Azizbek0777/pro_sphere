import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class Repository {
  final Dio _dio = Dio()..interceptors.add(LogInterceptor(responseBody: true, requestBody: true, requestHeader: true));
  final String _url = 'http://api1.sfere.pro';
  GetStorage getStorage = GetStorage();

  Future<Response?> getCurrency() async {
    try {
      Response response = await _dio.get("$_url/currency");
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }

  Future<Response?> searchResult({required int limit, required int page, String? query}) async {
    try {
      Response response = await _dio.post(
        "$_url/search/text",
        data: {
          "limit": 0,
          "page": 0,
          "query": query,
        },
      );
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }
}
