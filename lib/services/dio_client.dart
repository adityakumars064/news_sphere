
import 'package:news_sphere/constants/export.dart';


const _defaultConnectTimeout =
Duration(milliseconds: Duration.millisecondsPerMinute);
const _defaultReceiveTimeout =
Duration(milliseconds: Duration.millisecondsPerMinute);
class DioClient {
  final String baseUrl;

  late Dio _dio;

  final List<Interceptor>? interceptors;

  DioClient(
      this.baseUrl,
      Dio dio,{
        this.interceptors,
      }){
_dio=dio;
_dio
  ..options.baseUrl = baseUrl
  ..options.connectTimeout =   _defaultConnectTimeout
  ..options.receiveTimeout =  _defaultReceiveTimeout
  ..httpClientAdapter
  ..options.headers = {'Content-Type': 'application/json; charset=UTF-8',"accept":"application/json"};

if (interceptors?.isNotEmpty ?? false) {
  _dio.interceptors.addAll(interceptors!);
}
if (kDebugMode) {
  _dio.interceptors.add(DioLogger(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: false,
    requestBody: true,
  ));
}
  }




  Future<dynamic> get(
      String uri, {
        Map<String, dynamic>? queryParameters,

        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
        bool? skipAuth
      }) async {
    try {
      if (skipAuth == false) {
        var token ;
        debugPrint("token $token");
        if (token != null) {
          options = Options(headers: {"Authorization": "Bearer $token"});
        }
      }

      var response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }


}