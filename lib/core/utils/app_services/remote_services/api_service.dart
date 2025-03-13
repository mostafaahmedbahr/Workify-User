 import 'package:dio/dio.dart';
import '../local_services/cache_token.dart';
import 'end_points.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> postData({
    required String endPoint,
    bool userToken = false,
    dynamic data,
    Map<String,dynamic>? query,
  }) async {
    _dio.options.headers = {
      "Accept":"application/json",
      "Content-Type": "application/json",
      if (userToken)
        "Authorization": "${CacheTokenManger.userToken}"
    };
    var response = await _dio.post(
      "${EndPoints.baseUrl}$endPoint",
      data: data,
      queryParameters: query,
    );
    return response;
  }



  Future<Response> get({
    required String endPoint,
    bool userToken = false,
    Map<String, dynamic>? query,
  }) async {
    _dio.options.headers = {
      "Content-Type": "application/json",
      if (userToken)
        "Authorization": "Bearer ${CacheTokenManger.userToken}"
    };
    var response = await _dio.get(
      '${EndPoints.baseUrl}$endPoint',
      queryParameters: query,
    );
    return response;
  }
  Future<Response> putData({
    required String endPoint,
    bool sendAuthToken = false,
    required FormData data,
  }) async {
    _dio.options.headers = {
      "accept":"*/*",
      "Content-Type": "multipart/form-data",
    };
    var response = await _dio.put(
      '${EndPoints.baseUrl}$endPoint',
      data: data,
    );
    return response;
  }



  Future<Response> deleteData({
    required String endPoint,
    bool userToken = false,
    dynamic data,
    Map<String,dynamic>? query,
  }) async {
    _dio.options.headers = {
      "Accept":"application/json",
      "Content-Type": "application/json",
      if (userToken)
        "Authorization": "${CacheTokenManger.userToken}"
    };
    var response = await _dio.delete(
      "${EndPoints.baseUrl}$endPoint",
      data: data,
      queryParameters: query,
    );
    return response;
  }

}
