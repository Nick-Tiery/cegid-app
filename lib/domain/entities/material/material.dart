class Material {
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

  Material({
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
}
