import 'package:dio/dio.dart';
import 'package:news_sphere/constants/export.dart';

class NetworkException {
  static String? message = "";

  static getDioException(error) {
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectionError:
              return message = AppStrings.noInternetConnection.tr;
            case DioExceptionType.connectionTimeout:
              return message = AppStrings.connectionTimeout.tr;
            case DioExceptionType.sendTimeout:
              return message = AppStrings.sendTimeout.tr;
            case DioExceptionType.receiveTimeout:
              return message = AppStrings.receiveTimeout.tr;
            case DioExceptionType.badCertificate:
              return message = AppStrings.badCertificate.tr;
            case DioExceptionType.badResponse:
              switch (error.response!.statusCode) {
                case 400:
                  var dataValue = error.response?.data;
                  return dataValue["error"];
                case 401:
                  return message = AppStrings.unauthorized;
                case 403:
                  return message = AppStrings.forbidden;
                case 404:
                  return message = AppStrings.notFound;
                case 500:
                  return message = AppStrings.internalServerError;
                case 503:
                  return message = AppStrings.serviceUnavailable;
                default:
                  return message = AppStrings.somethingWrong;
              }
            case DioExceptionType.cancel:
              return message = AppStrings.cancel.tr;
            case DioExceptionType.unknown:
              return message = AppStrings.unknown.tr;
          }
        }
      } catch (e) {
        return message = AppStrings.unexpectedExceptions.tr;
      }
    } else {
      return message = AppStrings.unexpectedExceptions;
    }
  }
}
