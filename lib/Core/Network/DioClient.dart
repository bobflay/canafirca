import 'package:dio/dio.dart';

class DioClient{
  Dio getInstance(){
    return Dio(BaseOptions(
      baseUrl: 'Https://simp.xpertbotacademy.online/api',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json
    ));
  }
}