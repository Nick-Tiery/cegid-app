import 'package:realm/realm.dart';

part 'material_realm_model.g.dart';

@RealmModel()
class $MaterialRealmModel {
  int? equipmentCode;
  @PrimaryKey()
  int? materialCode;
  String? description;
  String? value;
  double? cost;
  int? vat;
  int? stock;
  double? pvd;
  String? manufacturer;
  String? model;
  String? location;
  int? subcategoryCode;
  String? productComment;
  int? weight;
  String? sigridCode;
  String? barcode;
  int? installationMinutes;
  String? alternativeDescription;
  String? imageKey;
  List<String> tariffs = [];
}
