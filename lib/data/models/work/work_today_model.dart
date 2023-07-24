import '../../../domain/entities/work/work_today.dart';

class WorkTodayModel extends WorkToday {
  Map<String, dynamic>? work;
  Map<String, dynamic>? service;
  List<dynamic>? listDependents;
  List<dynamic>? listMaterialsUsed;
  Map<String, dynamic>? optionalData;

  WorkTodayModel({
    this.work,
    this.service,
    this.listDependents,
    this.listMaterialsUsed,
    this.optionalData,
  });

  factory WorkTodayModel.fromJson(Map<String, dynamic> json) => WorkTodayModel(
        work: json['trabajo'],
        service: json['servicio'],
        listDependents: json['materiales_usados'],
        listMaterialsUsed: json['dependientes'],
        optionalData: json['datos_adicionales'],
      );

  Map<String, dynamic> toJson() => {
        'trabajo': work,
        'servicio': service,
        'materiales_usados': listDependents,
        'dependientes': listMaterialsUsed,
        'datos_adicionales': optionalData,
      };
}
