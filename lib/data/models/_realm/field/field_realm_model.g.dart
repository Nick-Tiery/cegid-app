// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_realm_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class FieldRealmModel extends $FieldRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  FieldRealmModel(
    int? equipmentCode, {
    String? fieldCode,
    String? label,
    String? input,
    int? length,
    String? content,
    int? order,
    String? automatic,
    int? certificationOrder,
    int? certificationSize,
    String? defaultValue,
    String? editable,
    String? fieldObservations,
    String? susceptibleToCorrectValue,
    String? notVisibleToClient,
    String? conformityField,
    String? incorrectValues,
    String? normativeText,
    String? recommendationField,
    String? label2,
    String? protected,
    String? informative,
    Iterable<OptionRealmModel> options = const [],
  }) {
    RealmObjectBase.set(this, 'equipmentCode', equipmentCode);
    RealmObjectBase.set(this, 'fieldCode', fieldCode);
    RealmObjectBase.set(this, 'label', label);
    RealmObjectBase.set(this, 'input', input);
    RealmObjectBase.set(this, 'length', length);
    RealmObjectBase.set(this, 'content', content);
    RealmObjectBase.set(this, 'order', order);
    RealmObjectBase.set(this, 'automatic', automatic);
    RealmObjectBase.set(this, 'certificationOrder', certificationOrder);
    RealmObjectBase.set(this, 'certificationSize', certificationSize);
    RealmObjectBase.set(this, 'defaultValue', defaultValue);
    RealmObjectBase.set(this, 'editable', editable);
    RealmObjectBase.set(this, 'fieldObservations', fieldObservations);
    RealmObjectBase.set(
        this, 'susceptibleToCorrectValue', susceptibleToCorrectValue);
    RealmObjectBase.set(this, 'notVisibleToClient', notVisibleToClient);
    RealmObjectBase.set(this, 'conformityField', conformityField);
    RealmObjectBase.set(this, 'incorrectValues', incorrectValues);
    RealmObjectBase.set(this, 'normativeText', normativeText);
    RealmObjectBase.set(this, 'recommendationField', recommendationField);
    RealmObjectBase.set(this, 'label2', label2);
    RealmObjectBase.set(this, 'protected', protected);
    RealmObjectBase.set(this, 'informative', informative);
    RealmObjectBase.set<RealmList<OptionRealmModel>>(
        this, 'options', RealmList<OptionRealmModel>(options));
  }

  FieldRealmModel._();

  @override
  int? get equipmentCode =>
      RealmObjectBase.get<int>(this, 'equipmentCode') as int?;
  @override
  set equipmentCode(int? value) =>
      RealmObjectBase.set(this, 'equipmentCode', value);

  @override
  String? get fieldCode =>
      RealmObjectBase.get<String>(this, 'fieldCode') as String?;
  @override
  set fieldCode(String? value) => RealmObjectBase.set(this, 'fieldCode', value);

  @override
  String? get label => RealmObjectBase.get<String>(this, 'label') as String?;
  @override
  set label(String? value) => RealmObjectBase.set(this, 'label', value);

  @override
  String? get input => RealmObjectBase.get<String>(this, 'input') as String?;
  @override
  set input(String? value) => RealmObjectBase.set(this, 'input', value);

  @override
  int? get length => RealmObjectBase.get<int>(this, 'length') as int?;
  @override
  set length(int? value) => RealmObjectBase.set(this, 'length', value);

  @override
  String? get content =>
      RealmObjectBase.get<String>(this, 'content') as String?;
  @override
  set content(String? value) => RealmObjectBase.set(this, 'content', value);

  @override
  int? get order => RealmObjectBase.get<int>(this, 'order') as int?;
  @override
  set order(int? value) => RealmObjectBase.set(this, 'order', value);

  @override
  String? get automatic =>
      RealmObjectBase.get<String>(this, 'automatic') as String?;
  @override
  set automatic(String? value) => RealmObjectBase.set(this, 'automatic', value);

  @override
  int? get certificationOrder =>
      RealmObjectBase.get<int>(this, 'certificationOrder') as int?;
  @override
  set certificationOrder(int? value) =>
      RealmObjectBase.set(this, 'certificationOrder', value);

  @override
  int? get certificationSize =>
      RealmObjectBase.get<int>(this, 'certificationSize') as int?;
  @override
  set certificationSize(int? value) =>
      RealmObjectBase.set(this, 'certificationSize', value);

  @override
  String? get defaultValue =>
      RealmObjectBase.get<String>(this, 'defaultValue') as String?;
  @override
  set defaultValue(String? value) =>
      RealmObjectBase.set(this, 'defaultValue', value);

  @override
  String? get editable =>
      RealmObjectBase.get<String>(this, 'editable') as String?;
  @override
  set editable(String? value) => RealmObjectBase.set(this, 'editable', value);

  @override
  String? get fieldObservations =>
      RealmObjectBase.get<String>(this, 'fieldObservations') as String?;
  @override
  set fieldObservations(String? value) =>
      RealmObjectBase.set(this, 'fieldObservations', value);

  @override
  String? get susceptibleToCorrectValue =>
      RealmObjectBase.get<String>(this, 'susceptibleToCorrectValue') as String?;
  @override
  set susceptibleToCorrectValue(String? value) =>
      RealmObjectBase.set(this, 'susceptibleToCorrectValue', value);

  @override
  String? get notVisibleToClient =>
      RealmObjectBase.get<String>(this, 'notVisibleToClient') as String?;
  @override
  set notVisibleToClient(String? value) =>
      RealmObjectBase.set(this, 'notVisibleToClient', value);

  @override
  String? get conformityField =>
      RealmObjectBase.get<String>(this, 'conformityField') as String?;
  @override
  set conformityField(String? value) =>
      RealmObjectBase.set(this, 'conformityField', value);

  @override
  String? get incorrectValues =>
      RealmObjectBase.get<String>(this, 'incorrectValues') as String?;
  @override
  set incorrectValues(String? value) =>
      RealmObjectBase.set(this, 'incorrectValues', value);

  @override
  String? get normativeText =>
      RealmObjectBase.get<String>(this, 'normativeText') as String?;
  @override
  set normativeText(String? value) =>
      RealmObjectBase.set(this, 'normativeText', value);

  @override
  String? get recommendationField =>
      RealmObjectBase.get<String>(this, 'recommendationField') as String?;
  @override
  set recommendationField(String? value) =>
      RealmObjectBase.set(this, 'recommendationField', value);

  @override
  String? get label2 => RealmObjectBase.get<String>(this, 'label2') as String?;
  @override
  set label2(String? value) => RealmObjectBase.set(this, 'label2', value);

  @override
  String? get protected =>
      RealmObjectBase.get<String>(this, 'protected') as String?;
  @override
  set protected(String? value) => RealmObjectBase.set(this, 'protected', value);

  @override
  RealmList<OptionRealmModel> get options =>
      RealmObjectBase.get<OptionRealmModel>(this, 'options')
          as RealmList<OptionRealmModel>;
  @override
  set options(covariant RealmList<OptionRealmModel> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get informative =>
      RealmObjectBase.get<String>(this, 'informative') as String?;
  @override
  set informative(String? value) =>
      RealmObjectBase.set(this, 'informative', value);

  @override
  Stream<RealmObjectChanges<FieldRealmModel>> get changes =>
      RealmObjectBase.getChanges<FieldRealmModel>(this);

  @override
  FieldRealmModel freeze() =>
      RealmObjectBase.freezeObject<FieldRealmModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(FieldRealmModel._);
    return const SchemaObject(
        ObjectType.realmObject, FieldRealmModel, 'FieldRealmModel', [
      SchemaProperty('equipmentCode', RealmPropertyType.int,
          optional: true, primaryKey: true),
      SchemaProperty('fieldCode', RealmPropertyType.string, optional: true),
      SchemaProperty('label', RealmPropertyType.string, optional: true),
      SchemaProperty('input', RealmPropertyType.string, optional: true),
      SchemaProperty('length', RealmPropertyType.int, optional: true),
      SchemaProperty('content', RealmPropertyType.string, optional: true),
      SchemaProperty('order', RealmPropertyType.int, optional: true),
      SchemaProperty('automatic', RealmPropertyType.string, optional: true),
      SchemaProperty('certificationOrder', RealmPropertyType.int,
          optional: true),
      SchemaProperty('certificationSize', RealmPropertyType.int,
          optional: true),
      SchemaProperty('defaultValue', RealmPropertyType.string, optional: true),
      SchemaProperty('editable', RealmPropertyType.string, optional: true),
      SchemaProperty('fieldObservations', RealmPropertyType.string,
          optional: true),
      SchemaProperty('susceptibleToCorrectValue', RealmPropertyType.string,
          optional: true),
      SchemaProperty('notVisibleToClient', RealmPropertyType.string,
          optional: true),
      SchemaProperty('conformityField', RealmPropertyType.string,
          optional: true),
      SchemaProperty('incorrectValues', RealmPropertyType.string,
          optional: true),
      SchemaProperty('normativeText', RealmPropertyType.string, optional: true),
      SchemaProperty('recommendationField', RealmPropertyType.string,
          optional: true),
      SchemaProperty('label2', RealmPropertyType.string, optional: true),
      SchemaProperty('protected', RealmPropertyType.string, optional: true),
      SchemaProperty('options', RealmPropertyType.object,
          linkTarget: 'OptionRealmModel',
          collectionType: RealmCollectionType.list),
      SchemaProperty('informative', RealmPropertyType.string, optional: true),
    ]);
  }
}
