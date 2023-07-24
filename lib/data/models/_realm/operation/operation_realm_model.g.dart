// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_realm_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class OperationRealmModel extends $OperationRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  OperationRealmModel(
    int? operationCode, {
    int? equipmentCode,
    String? description,
    String? value,
    double? cost,
    int? vat,
    String? sigridCode,
    String? notEditable,
    String? quickOperation,
    String? involvesWorkshopWithdrawal,
    String? involvesWorkshop,
    String? changesRetestingDate,
    int? operationCategoryCode,
    String? retestingDateField,
  }) {
    RealmObjectBase.set(this, 'equipmentCode', equipmentCode);
    RealmObjectBase.set(this, 'operationCode', operationCode);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'value', value);
    RealmObjectBase.set(this, 'cost', cost);
    RealmObjectBase.set(this, 'vat', vat);
    RealmObjectBase.set(this, 'sigridCode', sigridCode);
    RealmObjectBase.set(this, 'notEditable', notEditable);
    RealmObjectBase.set(this, 'quickOperation', quickOperation);
    RealmObjectBase.set(
        this, 'involvesWorkshopWithdrawal', involvesWorkshopWithdrawal);
    RealmObjectBase.set(this, 'involvesWorkshop', involvesWorkshop);
    RealmObjectBase.set(this, 'changesRetestingDate', changesRetestingDate);
    RealmObjectBase.set(this, 'operationCategoryCode', operationCategoryCode);
    RealmObjectBase.set(this, 'retestingDateField', retestingDateField);
  }

  OperationRealmModel._();

  @override
  int? get equipmentCode =>
      RealmObjectBase.get<int>(this, 'equipmentCode') as int?;
  @override
  set equipmentCode(int? value) =>
      RealmObjectBase.set(this, 'equipmentCode', value);

  @override
  int? get operationCode =>
      RealmObjectBase.get<int>(this, 'operationCode') as int?;
  @override
  set operationCode(int? value) =>
      RealmObjectBase.set(this, 'operationCode', value);

  @override
  String? get description =>
      RealmObjectBase.get<String>(this, 'description') as String?;
  @override
  set description(String? value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String? get value => RealmObjectBase.get<String>(this, 'value') as String?;
  @override
  set value(String? value) => RealmObjectBase.set(this, 'value', value);

  @override
  double? get cost => RealmObjectBase.get<double>(this, 'cost') as double?;
  @override
  set cost(double? value) => RealmObjectBase.set(this, 'cost', value);

  @override
  int? get vat => RealmObjectBase.get<int>(this, 'vat') as int?;
  @override
  set vat(int? value) => RealmObjectBase.set(this, 'vat', value);

  @override
  String? get sigridCode =>
      RealmObjectBase.get<String>(this, 'sigridCode') as String?;
  @override
  set sigridCode(String? value) =>
      RealmObjectBase.set(this, 'sigridCode', value);

  @override
  String? get notEditable =>
      RealmObjectBase.get<String>(this, 'notEditable') as String?;
  @override
  set notEditable(String? value) =>
      RealmObjectBase.set(this, 'notEditable', value);

  @override
  String? get quickOperation =>
      RealmObjectBase.get<String>(this, 'quickOperation') as String?;
  @override
  set quickOperation(String? value) =>
      RealmObjectBase.set(this, 'quickOperation', value);

  @override
  String? get involvesWorkshopWithdrawal =>
      RealmObjectBase.get<String>(this, 'involvesWorkshopWithdrawal')
          as String?;
  @override
  set involvesWorkshopWithdrawal(String? value) =>
      RealmObjectBase.set(this, 'involvesWorkshopWithdrawal', value);

  @override
  String? get involvesWorkshop =>
      RealmObjectBase.get<String>(this, 'involvesWorkshop') as String?;
  @override
  set involvesWorkshop(String? value) =>
      RealmObjectBase.set(this, 'involvesWorkshop', value);

  @override
  String? get changesRetestingDate =>
      RealmObjectBase.get<String>(this, 'changesRetestingDate') as String?;
  @override
  set changesRetestingDate(String? value) =>
      RealmObjectBase.set(this, 'changesRetestingDate', value);

  @override
  int? get operationCategoryCode =>
      RealmObjectBase.get<int>(this, 'operationCategoryCode') as int?;
  @override
  set operationCategoryCode(int? value) =>
      RealmObjectBase.set(this, 'operationCategoryCode', value);

  @override
  String? get retestingDateField =>
      RealmObjectBase.get<String>(this, 'retestingDateField') as String?;
  @override
  set retestingDateField(String? value) =>
      RealmObjectBase.set(this, 'retestingDateField', value);

  @override
  Stream<RealmObjectChanges<OperationRealmModel>> get changes =>
      RealmObjectBase.getChanges<OperationRealmModel>(this);

  @override
  OperationRealmModel freeze() =>
      RealmObjectBase.freezeObject<OperationRealmModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(OperationRealmModel._);
    return const SchemaObject(
        ObjectType.realmObject, OperationRealmModel, 'OperationRealmModel', [
      SchemaProperty('equipmentCode', RealmPropertyType.int, optional: true),
      SchemaProperty('operationCode', RealmPropertyType.int,
          optional: true, primaryKey: true),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
      SchemaProperty('value', RealmPropertyType.string, optional: true),
      SchemaProperty('cost', RealmPropertyType.double, optional: true),
      SchemaProperty('vat', RealmPropertyType.int, optional: true),
      SchemaProperty('sigridCode', RealmPropertyType.string, optional: true),
      SchemaProperty('notEditable', RealmPropertyType.string, optional: true),
      SchemaProperty('quickOperation', RealmPropertyType.string,
          optional: true),
      SchemaProperty('involvesWorkshopWithdrawal', RealmPropertyType.string,
          optional: true),
      SchemaProperty('involvesWorkshop', RealmPropertyType.string,
          optional: true),
      SchemaProperty('changesRetestingDate', RealmPropertyType.string,
          optional: true),
      SchemaProperty('operationCategoryCode', RealmPropertyType.int,
          optional: true),
      SchemaProperty('retestingDateField', RealmPropertyType.string,
          optional: true),
    ]);
  }
}
