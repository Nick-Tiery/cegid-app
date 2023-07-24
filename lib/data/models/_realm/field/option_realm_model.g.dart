// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_realm_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class OptionRealmModel extends $OptionRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  OptionRealmModel(
    int selectionCode,
    String text,
    String anomalousValue,
    String order,
  ) {
    RealmObjectBase.set(this, 'selectionCode', selectionCode);
    RealmObjectBase.set(this, 'text', text);
    RealmObjectBase.set(this, 'anomalousValue', anomalousValue);
    RealmObjectBase.set(this, 'order', order);
  }

  OptionRealmModel._();

  @override
  int get selectionCode =>
      RealmObjectBase.get<int>(this, 'selectionCode') as int;
  @override
  set selectionCode(int value) =>
      RealmObjectBase.set(this, 'selectionCode', value);

  @override
  String get text => RealmObjectBase.get<String>(this, 'text') as String;
  @override
  set text(String value) => RealmObjectBase.set(this, 'text', value);

  @override
  String get anomalousValue =>
      RealmObjectBase.get<String>(this, 'anomalousValue') as String;
  @override
  set anomalousValue(String value) =>
      RealmObjectBase.set(this, 'anomalousValue', value);

  @override
  String get order => RealmObjectBase.get<String>(this, 'order') as String;
  @override
  set order(String value) => RealmObjectBase.set(this, 'order', value);

  @override
  Stream<RealmObjectChanges<OptionRealmModel>> get changes =>
      RealmObjectBase.getChanges<OptionRealmModel>(this);

  @override
  OptionRealmModel freeze() =>
      RealmObjectBase.freezeObject<OptionRealmModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(OptionRealmModel._);
    return const SchemaObject(
        ObjectType.realmObject, OptionRealmModel, 'OptionRealmModel', [
      SchemaProperty('selectionCode', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('text', RealmPropertyType.string),
      SchemaProperty('anomalousValue', RealmPropertyType.string),
      SchemaProperty('order', RealmPropertyType.string),
    ]);
  }
}
