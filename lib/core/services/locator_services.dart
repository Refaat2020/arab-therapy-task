

import 'package:arab_therapy_task/features/home_feature/data/repo/home_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_feature/data/datasources/home_datasource.dart';
import 'dio_services.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(()=> DioServices());
  locator.registerLazySingleton(()=> HomeRepo());
  locator.registerLazySingleton(()=> HomeDataSource());

}