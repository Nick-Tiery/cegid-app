import 'package:realm/realm.dart';

part 'option_realm_model.g.dart';

@RealmModel()
class $OptionRealmModel {
  @PrimaryKey()
  late int selectionCode;
  late String text;
  late String anomalousValue;
  late String order;
}
