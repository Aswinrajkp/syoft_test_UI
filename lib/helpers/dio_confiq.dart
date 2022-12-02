import 'package:dio/dio.dart';

Dio MAINDIO = Dio(options);

var options = BaseOptions(
  baseUrl: "https://snapkaro.com/eazyrooms_staging/api/",
  responseType: ResponseType.plain,
);