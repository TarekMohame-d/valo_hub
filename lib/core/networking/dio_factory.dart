import 'package:dio/dio.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void addDioHeaders() async {
    _dio?.options.headers = {};
  }
}
