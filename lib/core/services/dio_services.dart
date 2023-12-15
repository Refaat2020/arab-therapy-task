import 'package:arab_therapy_task/core/extensions/response_methods.dart';
import 'package:dio/dio.dart';

import '../../common/models/failure_model.dart';
import '../config/dio_options.dart';

class DioServices {
  Dio dio = Dio();

  Future<dynamic> getRequest(String apiUrl, {Map<String, dynamic>? parms,}) async {
    try {
      dio.options = await DioConfigOptions.getBaseOption();
      Response response =  await dio.get(apiUrl,queryParameters: parms );
      return response.handleResponse();
    } catch (e) {
      if (e is DioException) {
        throw FailureModel(
            message: e.handleDioException(e.type), state: 0, data: "data");
      }
      throw Exception(e);
    }
  }
}
