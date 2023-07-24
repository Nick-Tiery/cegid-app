import '../../../domain/entities/material/material.dart';

class MaterialModel extends Material {
  int? equipmentCode;
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
  List<dynamic>? tariffs;

  MaterialModel({
    this.equipmentCode,
    this.materialCode,
    this.description,
    this.value,
    this.cost,
    this.vat,
    this.stock,
    this.pvd,
    this.manufacturer,
    this.model,
    this.location,
    this.subcategoryCode,
    this.productComment,
    this.weight,
    this.sigridCode,
    this.barcode,
    this.installationMinutes,
    this.alternativeDescription,
    this.imageKey,
    this.tariffs,
  });

  factory MaterialModel.fromJson(Map<String, dynamic> json) => MaterialModel(
        equipmentCode: json['equipmentCode'],
        materialCode: json['materialCode'],
        description: json['description'],
        value: json['value'],
        cost: json['cost']?.toDouble(),
        vat: json['vat'],
        stock: json['stock'],
        pvd: json['pvd']?.toDouble(),
        manufacturer: json['manufacturer'],
        model: json['model'],
        location: json['location'],
        subcategoryCode: json['subcategoryCode'],
        productComment: json['productComment'],
        weight: json['weight'],
        sigridCode: json['sigridCode'],
        barcode: json['barcode'],
        installationMinutes: json['installationMinutes'],
        alternativeDescription: json['alternativeDescription'],
        imageKey: json['imageKey'],
        tariffs: json['tariffs'],
      );

  Map<String, dynamic> toJson() => {
        'equipmentCode': equipmentCode,
        'materialCode': materialCode,
        'description': description,
        'value': value,
        'cost': cost,
        'vat': vat,
        'stock': stock,
        'pvd': pvd,
        'manufacturer': manufacturer,
        'model': model,
        'location': location,
        'subcategoryCode': subcategoryCode,
        'productComment': productComment,
        'weight': weight,
        'sigridCode': sigridCode,
        'barcode': barcode,
        'installationMinutes': installationMinutes,
        'alternativeDescription': alternativeDescription,
        'imageKey': imageKey,
        'tariffs': tariffs,
      };
}
