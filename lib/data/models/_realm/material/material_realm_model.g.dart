// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_realm_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MaterialRealmModel extends $MaterialRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  MaterialRealmModel(
    int? materialCode, {
    int? equipmentCode,
    String? description,
    String? value,
    double? cost,
    int? vat,
    int? stock,
    double? pvd,
    String? manufacturer,
    String? model,
    String? location,
    int? subcategoryCode,
    String? productComment,
    int? weight,
    String? sigridCode,
    String? barcode,
    int? installationMinutes,
    String? alternativeDescription,
    String? imageKey,
    Iterable<String> tariffs = const [],
  }) {
    RealmObjectBase.set(this, 'equipmentCode', equipmentCode);
    RealmObjectBase.set(this, 'materialCode', materialCode);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'value', value);
    RealmObjectBase.set(this, 'cost', cost);
    RealmObjectBase.set(this, 'vat', vat);
    RealmObjectBase.set(this, 'stock', stock);
    RealmObjectBase.set(this, 'pvd', pvd);
    RealmObjectBase.set(this, 'manufacturer', manufacturer);
    RealmObjectBase.set(this, 'model', model);
    RealmObjectBase.set(this, 'location', location);
    RealmObjectBase.set(this, 'subcategoryCode', subcategoryCode);
    RealmObjectBase.set(this, 'productComment', productComment);
    RealmObjectBase.set(this, 'weight', weight);
    RealmObjectBase.set(this, 'sigridCode', sigridCode);
    RealmObjectBase.set(this, 'barcode', barcode);
    RealmObjectBase.set(this, 'installationMinutes', installationMinutes);
    RealmObjectBase.set(this, 'alternativeDescription', alternativeDescription);
    RealmObjectBase.set(this, 'imageKey', imageKey);
    RealmObjectBase.set<RealmList<String>>(
        this, 'tariffs', RealmList<String>(tariffs));
  }

  MaterialRealmModel._();

  @override
  int? get equipmentCode =>
      RealmObjectBase.get<int>(this, 'equipmentCode') as int?;
  @override
  set equipmentCode(int? value) =>
      RealmObjectBase.set(this, 'equipmentCode', value);

  @override
  int? get materialCode =>
      RealmObjectBase.get<int>(this, 'materialCode') as int?;
  @override
  set materialCode(int? value) =>
      RealmObjectBase.set(this, 'materialCode', value);

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
  int? get stock => RealmObjectBase.get<int>(this, 'stock') as int?;
  @override
  set stock(int? value) => RealmObjectBase.set(this, 'stock', value);

  @override
  double? get pvd => RealmObjectBase.get<double>(this, 'pvd') as double?;
  @override
  set pvd(double? value) => RealmObjectBase.set(this, 'pvd', value);

  @override
  String? get manufacturer =>
      RealmObjectBase.get<String>(this, 'manufacturer') as String?;
  @override
  set manufacturer(String? value) =>
      RealmObjectBase.set(this, 'manufacturer', value);

  @override
  String? get model => RealmObjectBase.get<String>(this, 'model') as String?;
  @override
  set model(String? value) => RealmObjectBase.set(this, 'model', value);

  @override
  String? get location =>
      RealmObjectBase.get<String>(this, 'location') as String?;
  @override
  set location(String? value) => RealmObjectBase.set(this, 'location', value);

  @override
  int? get subcategoryCode =>
      RealmObjectBase.get<int>(this, 'subcategoryCode') as int?;
  @override
  set subcategoryCode(int? value) =>
      RealmObjectBase.set(this, 'subcategoryCode', value);

  @override
  String? get productComment =>
      RealmObjectBase.get<String>(this, 'productComment') as String?;
  @override
  set productComment(String? value) =>
      RealmObjectBase.set(this, 'productComment', value);

  @override
  int? get weight => RealmObjectBase.get<int>(this, 'weight') as int?;
  @override
  set weight(int? value) => RealmObjectBase.set(this, 'weight', value);

  @override
  String? get sigridCode =>
      RealmObjectBase.get<String>(this, 'sigridCode') as String?;
  @override
  set sigridCode(String? value) =>
      RealmObjectBase.set(this, 'sigridCode', value);

  @override
  String? get barcode =>
      RealmObjectBase.get<String>(this, 'barcode') as String?;
  @override
  set barcode(String? value) => RealmObjectBase.set(this, 'barcode', value);

  @override
  int? get installationMinutes =>
      RealmObjectBase.get<int>(this, 'installationMinutes') as int?;
  @override
  set installationMinutes(int? value) =>
      RealmObjectBase.set(this, 'installationMinutes', value);

  @override
  String? get alternativeDescription =>
      RealmObjectBase.get<String>(this, 'alternativeDescription') as String?;
  @override
  set alternativeDescription(String? value) =>
      RealmObjectBase.set(this, 'alternativeDescription', value);

  @override
  String? get imageKey =>
      RealmObjectBase.get<String>(this, 'imageKey') as String?;
  @override
  set imageKey(String? value) => RealmObjectBase.set(this, 'imageKey', value);

  @override
  RealmList<String> get tariffs =>
      RealmObjectBase.get<String>(this, 'tariffs') as RealmList<String>;
  @override
  set tariffs(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<MaterialRealmModel>> get changes =>
      RealmObjectBase.getChanges<MaterialRealmModel>(this);

  @override
  MaterialRealmModel freeze() =>
      RealmObjectBase.freezeObject<MaterialRealmModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MaterialRealmModel._);
    return const SchemaObject(
        ObjectType.realmObject, MaterialRealmModel, 'MaterialRealmModel', [
      SchemaProperty('equipmentCode', RealmPropertyType.int, optional: true),
      SchemaProperty('materialCode', RealmPropertyType.int,
          optional: true, primaryKey: true),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
      SchemaProperty('value', RealmPropertyType.string, optional: true),
      SchemaProperty('cost', RealmPropertyType.double, optional: true),
      SchemaProperty('vat', RealmPropertyType.int, optional: true),
      SchemaProperty('stock', RealmPropertyType.int, optional: true),
      SchemaProperty('pvd', RealmPropertyType.double, optional: true),
      SchemaProperty('manufacturer', RealmPropertyType.string, optional: true),
      SchemaProperty('model', RealmPropertyType.string, optional: true),
      SchemaProperty('location', RealmPropertyType.string, optional: true),
      SchemaProperty('subcategoryCode', RealmPropertyType.int, optional: true),
      SchemaProperty('productComment', RealmPropertyType.string,
          optional: true),
      SchemaProperty('weight', RealmPropertyType.int, optional: true),
      SchemaProperty('sigridCode', RealmPropertyType.string, optional: true),
      SchemaProperty('barcode', RealmPropertyType.string, optional: true),
      SchemaProperty('installationMinutes', RealmPropertyType.int,
          optional: true),
      SchemaProperty('alternativeDescription', RealmPropertyType.string,
          optional: true),
      SchemaProperty('imageKey', RealmPropertyType.string, optional: true),
      SchemaProperty('tariffs', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
    ]);
  }
}
