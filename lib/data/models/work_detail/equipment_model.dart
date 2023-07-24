import '../../../domain/entities/work_detail/equipment.dart';

class EquipmentModel extends Equipment {
  int? codEquipo;
  String? tipologia;
  List<dynamic>? listEquipment;

  EquipmentModel({
    this.codEquipo,
    this.tipologia,
    this.listEquipment,
  });

  factory EquipmentModel.fromJson(Map<String, dynamic> json) => EquipmentModel(
        codEquipo: json['cod_equipo'],
        tipologia: json['tipologia'],
        listEquipment: json['equipos'],
      );

  Map<String, dynamic> toJson() => {
        'cod_equipo': codEquipo,
        'tipologia': tipologia,
        'equipos': listEquipment,
      };
}
