import 'package:arab_therapy_task/core/constants/app_urls.dart';
import 'package:arab_therapy_task/core/services/dio_services.dart';

import '../../../../common/models/failure_model.dart';
import '../../../../core/services/locator_services.dart';
import '../../../../file_export.dart';

class HomeDataSource {
  final DioServices _dioServices = locator<DioServices>();

  Future<Map<String, dynamic>> getItems(int page) async {
    try {
      var response = await _dioServices
          .getRequest(AppUrl.getImages, parms: {"offset": page});
      return response;
    } on FailureModel {
      rethrow;
    } catch (e) {
      throw FailureModel(state: 0, message: e.toString(), data: e.toString());
    }
  }
}
