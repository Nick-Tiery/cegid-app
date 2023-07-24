import '../../../domain/entities/work_detail/summary_equipment.dart';

class SummaryEquipmentModel extends SummaryEquipment {
  int? total;
  String? desEquipo;
  String? tipo;

  SummaryEquipmentModel({
    this.total,
    this.desEquipo,
    this.tipo,
  });

  factory SummaryEquipmentModel.fromJson(Map<String, dynamic> json) {
    return SummaryEquipmentModel(
      total: json['total'],
      desEquipo: json['des_equipo'],
      tipo: json['tipo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'des_equipo': desEquipo,
      'tipo': tipo,
    };
  }
}
