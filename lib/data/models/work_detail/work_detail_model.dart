import '../../../domain/entities/work_detail/work_detail.dart';

class WorkDetailModel extends WorkDetail {
  Map<String, dynamic>? work;
  Map<String, dynamic>? service;
  Map<String, dynamic>? customer;
  Map<String, dynamic>? admin;
  List<dynamic>? listPeriodicity;
  List<dynamic>? listSummaryEquipment;
  List<dynamic>? listDependents;
  List<dynamic>? listMaterialsUsed;
  List<dynamic>? listEquipment;
  List<dynamic>? listRules;
  List<dynamic>? optionalData;

  WorkDetailModel({
    this.work,
    this.service,
    this.customer,
    this.admin,
    this.listPeriodicity,
    this.listSummaryEquipment,
    this.listDependents,
    this.listMaterialsUsed,
    this.listEquipment,
    this.listRules,
    this.optionalData,
  });

  factory WorkDetailModel.fromJson(Map<String, dynamic> json) =>
      WorkDetailModel(
        work: json['trabajo'],
        service: json['servicio'],
        customer: json['cliente'],
        admin: json['administrador'],
        listPeriodicity: json['periodicidades'],
        listSummaryEquipment: json['resumen_equipos'],
        listDependents: json['materiales_usados'],
        listMaterialsUsed: json['dependientes'],
        listEquipment: json['equipos'],
        listRules: json['normas'],
        optionalData: json['datos_adicionales'],
      );

  Map<String, dynamic> toJson() => {
        'trabajo': work,
        'servicio': service,
        'cliente': customer,
        'administrador': admin,
        'periodicidades': listPeriodicity,
        'resumen_equipos': listSummaryEquipment,
        'materiales_usados': listDependents,
        'dependientes': listMaterialsUsed,
        'equipos': listEquipment,
        'normas': listRules,
        'datos_adicionales': optionalData,
      };
}
