import '../../../domain/entities/work_detail/periodicity.dart';

class PeriodicityModel extends Periodicity {
  int? codServicio;
  int? codPeriodico;
  int? tipo;
  int? mes;
  int? dia1;
  int? dia2;
  String? tecnico;
  int? cuota;
  String? textoCuota;
  bool? noFacturable;
  String? textoPostit;
  int? tiempoEstimado;
  String? tipoMantenimientoPerio;
  bool? albaranValoradoPerio;
  bool? facturacionAutomatica;
  dynamic responsablePeriodicidad;
  int? codEmpresaPeriodicidad;

  PeriodicityModel({
    this.codServicio,
    this.codPeriodico,
    this.tipo,
    this.mes,
    this.dia1,
    this.dia2,
    this.tecnico,
    this.cuota,
    this.textoCuota,
    this.noFacturable,
    this.textoPostit,
    this.tiempoEstimado,
    this.tipoMantenimientoPerio,
    this.albaranValoradoPerio,
    this.facturacionAutomatica,
    this.responsablePeriodicidad,
    this.codEmpresaPeriodicidad,
  });

  factory PeriodicityModel.fromJson(Map<String, dynamic> json) {
    return PeriodicityModel(
      codServicio: json['cod_servicio'],
      codPeriodico: json['cod_periodico'],
      tipo: json['tipo'],
      mes: json['mes'],
      dia1: json['dia1'],
      dia2: json['dia2'],
      tecnico: json['tecnico'],
      cuota: json['cuota'],
      textoCuota: json['texto_cuota'],
      noFacturable: json['nofacturable'] == 'true',
      textoPostit: json['texto_postit'],
      tiempoEstimado: json['tiempo_estimado'],
      tipoMantenimientoPerio: json['tipo_mantenimiento_perio'],
      albaranValoradoPerio: json['albaran_valorado_perio'] == 'true',
      facturacionAutomatica: json['facturacion_automatica'] == 'true',
      responsablePeriodicidad: json['responsable_periodicidad'],
      codEmpresaPeriodicidad: json['cod_empresa_periodicidad'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cod_servicio': codServicio,
      'cod_periodico': codPeriodico,
      'tipo': tipo,
      'mes': mes,
      'dia1': dia1,
      'dia2': dia2,
      'tecnico': tecnico,
      'cuota': cuota,
      'texto_cuota': textoCuota,
      'nofacturable': noFacturable.toString(),
      'texto_postit': textoPostit,
      'tiempo_estimado': tiempoEstimado,
      'tipo_mantenimiento_perio': tipoMantenimientoPerio,
      'albaran_valorado_perio': albaranValoradoPerio.toString(),
      'facturacion_automatica': facturacionAutomatica.toString(),
      'responsable_periodicidad': responsablePeriodicidad,
      'cod_empresa_periodicidad': codEmpresaPeriodicidad,
    };
  }
}
