import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_rails_todo_app/app_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<AppDio>((ref) => AppDio());

class AppDio with DioMixin implements Dio {
  AppDio() {
    options = BaseOptions(
      baseUrl: appConfig.dataBaseUrl,
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
