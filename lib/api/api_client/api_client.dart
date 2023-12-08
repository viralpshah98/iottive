import 'package:dio/dio.dart';
import 'package:iottive/api/api.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: null)
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(
      contentType: 'application/json',
      receiveTimeout: const Duration(milliseconds: 60000),
      connectTimeout: const Duration(milliseconds: 60000),
      baseUrl: ApiUrls.baseApi,
    );
    // dio.interceptors.add(HttpLoggingInterceptor());
    return _ApiClient(dio);
  }

  @POST(ApiUrls.loginApi)
  Future<HttpResponse<dynamic>> loginAPI({
    @Query('phoneManufacturer') String? phoneManufacturer,
    @Query('password') String? password,
    @Query('phoneModel') String? phoneModel,
    @Query('OSVersion') String? OSVersion,
    @Query('languageCode') String? languageCode,
    @Query('email') String? email,
    @Query('platform') String? platform,
  });

  @POST(ApiUrls.orderHistoryApi)
  Future<HttpResponse<dynamic>> orderHistoryAPI({
    @Query('authToken') String? authToken,
    @Query('userId') int? userId,
  });
}
