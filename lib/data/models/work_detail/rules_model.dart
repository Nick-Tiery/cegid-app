import '../../../domain/entities/work_detail/rules.dart';

class RulesModel extends Rules {
  int? claveNormaAcceso;
  String? textoNorma;
  String? tipo;

  RulesModel({
    this.claveNormaAcceso,
    this.textoNorma,
    this.tipo,
  });

  factory RulesModel.fromJson(Map<String, dynamic> json) {
    return RulesModel(
      claveNormaAcceso: json['clave_norma_acceso'],
      textoNorma: json['texto_norma'],
      tipo: json['tipo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'clave_norma_acceso': claveNormaAcceso,
      'texto_norma': textoNorma,
      'tipo': tipo,
    };
  }
}
