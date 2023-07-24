import 'package:realm/realm.dart';

part 'operation_realm_model.g.dart';

@RealmModel()
class $OperationRealmModel {
  int? equipmentCode;
  @PrimaryKey()
  int? operationCode;
  String? description;
  String? value;
  double? cost;
  int? vat;
  String? sigridCode;
  String? notEditable;
  String? quickOperation;
  String? involvesWorkshopWithdrawal;
  String? involvesWorkshop;
  String? changesRetestingDate;
  int? operationCategoryCode;
  String? retestingDateField;
}
