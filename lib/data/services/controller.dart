import 'package:gestiona3w/domain/entities/user_login/technician.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController {
  final technician = Technician().obs;
  final isLoading = false.obs;
  final listWorksToday = [].obs;
  final listFields = [].obs;
  final listMaterials = [].obs;
  final listOperations = [].obs;
}
