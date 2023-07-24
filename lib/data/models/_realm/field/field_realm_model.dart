import 'package:realm/realm.dart';

import 'option_realm_model.dart';

part 'field_realm_model.g.dart';

@RealmModel()
class $FieldRealmModel {
  @PrimaryKey()
  int? equipmentCode;
  String? fieldCode;
  String? label;
  String? input;
  int? length;
  String? content;
  int? order;
  String? automatic;
  int? certificationOrder;
  int? certificationSize;
  String? defaultValue;
  String? editable;
  String? fieldObservations;
  String? susceptibleToCorrectValue;
  String? notVisibleToClient;
  String? conformityField;
  String? incorrectValues;
  String? normativeText;
  String? recommendationField;
  String? label2;
  String? protected;
  List<$OptionRealmModel> options = [];
  String? informative;
}
