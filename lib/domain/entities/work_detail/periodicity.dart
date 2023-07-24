class Periodicity {
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

  Periodicity({
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
}
