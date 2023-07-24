import 'package:get/instance_manager.dart';

import '../data/datasources/get_all_works/get_all_works_datasource.dart';
import '../data/datasources/get_fields/get_fields_datasource.dart';
import '../data/datasources/get_materials/get_materials_datasource.dart';
import '../data/datasources/get_operations/get_operations_datasource.dart';
import '../data/datasources/get_work_detail/get_work_detail_datasource.dart';
import '../data/datasources/login_initial/login_initial_datasource.dart';
import '../data/datasources/login_token/login_token_datasource.dart';
import '../data/db/secure_storage/my_secure_storage_manager.dart';
import '../data/repositories/get_all_works/get_all_works_repository.dart';
import '../data/repositories/get_fields/get_fields_repository.dart';
import '../data/repositories/get_materials/get_materials_repository.dart';
import '../data/repositories/get_operations/get_operations_repository.dart';
import '../data/repositories/get_work_detail/get_work_detail_repository.dart';
import '../data/repositories/login_initial/login_initial_repository.dart';
import '../data/repositories/login_token/login_token_repository.dart';
import '../data/services/controller.dart';
import '../data/services/internet_checker.dart';
import '../data/services/rest_service.dart';
import '../domain/use_cases/get_all_works/get_all_works_use_case.dart';
import '../domain/use_cases/get_fields/get_fields_use_case.dart';
import '../domain/use_cases/get_materials/get_materials_use_case.dart';
import '../domain/use_cases/get_operations/get_operations_use_case.dart';
import '../domain/use_cases/get_work_detail/get_work_detail_use_case.dart';
import '../domain/use_cases/login_initial/login_initial_use_case.dart';
import '../domain/use_cases/login_token/login_token_use_case.dart';

class Injection {
  static void loadDependencies() {
    // Inject Services
    Get.lazyPut(
      () => Controller(),
    );

    Get.lazyPut(
      () => RestService(),
    );

    Get.lazyPut(
      () => MySecureStorageManager(),
    );

    Get.lazyPut(
      () => InternetChecker(),
    );

    // Inject Datasources
    Get.lazyPut(
      () => LoginInitialDatasourceImpl(
        restService: Get.find(),
      ),
    );

    Get.lazyPut(
      () => LoginTokenDatasourceImpl(
        restService: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetAllWorksDatasourceImpl(
        restService: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetWorkDetailDatasourceImpl(
        restService: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetFieldsDatasourceImpl(
        restService: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetMaterialsDatasourceImpl(
        restService: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetOperationsDatasourceImpl(
        restService: Get.find(),
      ),
    );

    // Inject Repositories
    Get.lazyPut<LoginInitialRepository>(
      () => LoginInitialRepositoryImpl(
        loginInitialDatasourceImpl: Get.find(),
      ),
    );

    Get.lazyPut<LoginTokenRepository>(
      () => LoginTokenRepositoryImpl(
        loginTokenDatasourceImpl: Get.find(),
      ),
    );

    Get.lazyPut<GetAllWorksRepository>(
      () => GetAllWorksRepositoryImpl(
        getAllWorksDatasource: Get.find(),
      ),
    );

    Get.lazyPut<GetWorkDetailRepository>(
      () => GetWorkDetailRepositoryImpl(
        getWorkDetailDatasource: Get.find(),
      ),
    );

    Get.lazyPut<GetFieldsRepository>(
      () => GetFieldsRepositoryImpl(
        getFieldsDatasource: Get.find(),
      ),
    );

    Get.lazyPut<GetMaterialsRepository>(
      () => GetMaterialsRepositoryImpl(
        getMaterialsDatasource: Get.find(),
      ),
    );

    Get.lazyPut<GetOperationsRepository>(
      () => GetOperationsRepositoryImpl(
        getOperationsDatasource: Get.find(),
      ),
    );

    // Inject Use Cases
    Get.lazyPut(
      () => LoginInitialUseCase(
        loginInitialRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => LoginTokenUseCase(
        loginTokenRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetAllWorksUseCase(
        getAllWorksRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetWorkDetailUseCase(
        getWorkDetailRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetFieldsUseCase(
        getFieldsRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetMaterialsUseCase(
        getMaterialsRepository: Get.find(),
      ),
    );

    Get.lazyPut(
      () => GetOperationsUseCase(
        getOperationsRepository: Get.find(),
      ),
    );
  }
}
