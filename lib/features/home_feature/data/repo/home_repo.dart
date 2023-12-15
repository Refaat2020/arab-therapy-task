import 'package:arab_therapy_task/features/home_feature/data/datasources/home_datasource.dart';
import 'package:arab_therapy_task/features/home_feature/data/models/items_model/items_model.dart';
import 'package:arab_therapy_task/file_export.dart';

import '../../../../common/models/failure_model.dart';
import '../../../../core/services/locator_services.dart';

class HomeRepo {
  final HomeDataSource _homeDataSource = locator<HomeDataSource>();

  Future<ItemsModel> getItems(int page) async {
    try {
      var response = await _homeDataSource.getItems(page);
      var itemModel = ItemsModel.fromMap(response);
      return itemModel;
    } on FailureModel {
      rethrow;
    } catch (e) {
      throw FailureModel(state: 0, message: e.toString(), data: e.toString());
    }
  }
}
