import '../../../domain/entities/work/work.dart';

class WorkModel extends Work {
  int? idTrabajo;
  int? codServicio;
  int? codEquipo;
  String? usuario;
  String? fechaAsignada;
  String? horaAsignada;
  String? fechaInicio;
  String? fechaFin;
  String? horaInicio;
  String? horaFin;
  int? estado;
  String? tipo;
  String? comentario;
  String? firma;
  String? fechaCreacion;
  String? horaCreacion;
  int? codPeriodico;
  String? nFactura;
  int? descuentoOpe;
  int? descuentoMat;
  double? iva;
  String? presupuesto;
  String? nofacturable;
  int? automatico;
  String? numeroPedido;
  int? tiempoEstimado;
  String? codContador;
  String? tipoMantenimientoTrabajo;
  String? urgente;
  String? dependienteCorrectivo;
  String? codAcompanante;
  String? comentarioCliente;
  String? certificadoFirmado;
  String? trabajoRevisado;
  String? trabajoConcluido;
  String? comentarioTecnicos;
  String? numeroPresupuesto;
  int? claveEntregaGeo;
  int? claveRecogidaGeo;
  String? trabajoTipoPresupuesto;
  int? desplazamientoTrabajo;
  String? fechaLimite;
  String? usuarioLimite;
  String? cobradoTecnico;
  int? importeTrabajo;
  String? retiradaDeMaterial;
  int? importeCobradoTecnico;
  String? comentarioPrivado;
  int? trabajoOrigen;
  String? datosAlternativosCliente;
  String? avisarFinalizar;
  String? trabajoQuickButton;
  String? albaranValorado;
  String? satisfaccionCliente;
  String? codComercial;
  String? responsableTrabajo;
  int? codAlmacenTrabajo;
  String? pagoConTarjeta;
  String? requierePresupuesto;
  String? trabajoRechazadoCliente;
  String? notasPresupuesto;
  String? idTrabajoRetiradaMaterial;
  int? codEmpresaTrabajo;
  String? materialPedido;
  String? estadoMaterialPedido;
  String? materialPedidoListo;
  String? trabajoPermisoFacturarMovil;
  int? importeTotalTrabajo;
  int? costeTrabajo;
  String? gestionResiduos;
  String? limpiezaInstalacion;
  int? ordenTrabajo;
  String? numeroPedidoInterno;
  String? caritasColores;
  String? tiempoRespuestaDeseado;
  String? textoAvisoFinalizado;
  String? creadoFinalizadoDesdePresupuesto;
  String? fechaEquiposEntregadosTaller;
  String? indicacionesEquiposEntregadosTaller;
  int? claveProyectoTrabajo;
  String? facturadoPorElTecnico;
  String? quickUsado;
  String? ubicacionMaterialAsignado;
  String? idMaquina;
  int? ordenDeVisualizacion;
  int? descuentoGlobalDesdePresupuesto;
  int? codCaducidad;
  String? unicoEquipo;
  String? formaPagoTecnico;
  String? creadoSinMovimientoStock;
  String? mostrarMovilMaterialesPresupuesto;
  String? claseEstado;
  String? oRDENP;

  WorkModel({
    this.idTrabajo,
    this.codServicio,
    this.codEquipo,
    this.usuario,
    this.fechaAsignada,
    this.horaAsignada,
    this.fechaInicio,
    this.fechaFin,
    this.horaInicio,
    this.horaFin,
    this.estado,
    this.tipo,
    this.comentario,
    this.firma,
    this.fechaCreacion,
    this.horaCreacion,
    this.codPeriodico,
    this.nFactura,
    this.descuentoOpe,
    this.descuentoMat,
    this.iva,
    this.presupuesto,
    this.nofacturable,
    this.automatico,
    this.numeroPedido,
    this.tiempoEstimado,
    this.codContador,
    this.tipoMantenimientoTrabajo,
    this.urgente,
    this.dependienteCorrectivo,
    this.codAcompanante,
    this.comentarioCliente,
    this.certificadoFirmado,
    this.trabajoRevisado,
    this.trabajoConcluido,
    this.comentarioTecnicos,
    this.numeroPresupuesto,
    this.claveEntregaGeo,
    this.claveRecogidaGeo,
    this.trabajoTipoPresupuesto,
    this.desplazamientoTrabajo,
    this.fechaLimite,
    this.usuarioLimite,
    this.cobradoTecnico,
    this.importeTrabajo,
    this.retiradaDeMaterial,
    this.importeCobradoTecnico,
    this.comentarioPrivado,
    this.trabajoOrigen,
    this.datosAlternativosCliente,
    this.avisarFinalizar,
    this.trabajoQuickButton,
    this.albaranValorado,
    this.satisfaccionCliente,
    this.codComercial,
    this.responsableTrabajo,
    this.codAlmacenTrabajo,
    this.pagoConTarjeta,
    this.requierePresupuesto,
    this.trabajoRechazadoCliente,
    this.notasPresupuesto,
    this.idTrabajoRetiradaMaterial,
    this.codEmpresaTrabajo,
    this.materialPedido,
    this.estadoMaterialPedido,
    this.materialPedidoListo,
    this.trabajoPermisoFacturarMovil,
    this.importeTotalTrabajo,
    this.costeTrabajo,
    this.gestionResiduos,
    this.limpiezaInstalacion,
    this.ordenTrabajo,
    this.numeroPedidoInterno,
    this.caritasColores,
    this.tiempoRespuestaDeseado,
    this.textoAvisoFinalizado,
    this.creadoFinalizadoDesdePresupuesto,
    this.fechaEquiposEntregadosTaller,
    this.indicacionesEquiposEntregadosTaller,
    this.claveProyectoTrabajo,
    this.facturadoPorElTecnico,
    this.quickUsado,
    this.ubicacionMaterialAsignado,
    this.idMaquina,
    this.ordenDeVisualizacion,
    this.descuentoGlobalDesdePresupuesto,
    this.codCaducidad,
    this.unicoEquipo,
    this.formaPagoTecnico,
    this.creadoSinMovimientoStock,
    this.mostrarMovilMaterialesPresupuesto,
    this.claseEstado,
    this.oRDENP,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) => WorkModel(
      idTrabajo: json['id_trabajo'],
      codServicio: json['cod_servicio'],
      codEquipo: json['cod_equipo'],
      usuario: json['usuario'],
      fechaAsignada: json['fecha_asignada'],
      horaAsignada: json['hora_asignada'],
      fechaInicio: json['fecha_inicio'],
      fechaFin: json['fecha_fin'],
      horaInicio: json['hora_inicio'],
      horaFin: json['hora_fin'],
      estado: json['estado'],
      tipo: json['tipo'],
      comentario: json['comentario'],
      firma: json['firma'],
      fechaCreacion: json['fecha_creacion'],
      horaCreacion: json['hora_creacion'],
      codPeriodico: json['cod_periodico'],
      nFactura: json['n_factura'],
      descuentoOpe: json['descuento_ope'],
      descuentoMat: json['descuento_mat'],
      iva: json['iva']?.toDouble(),
      presupuesto: json['presupuesto'],
      nofacturable: json['nofacturable'],
      automatico: json['automatico'],
      numeroPedido: json['numero_pedido'],
      tiempoEstimado: json['tiempo_estimado'],
      codContador: json['cod_contador'],
      tipoMantenimientoTrabajo: json['tipo_mantenimiento_trabajo'],
      urgente: json['urgente'],
      dependienteCorrectivo: json['dependiente_correctivo'],
      codAcompanante: json['cod_acompanante'],
      comentarioCliente: json['comentario_cliente'],
      certificadoFirmado: json['certificado_firmado'],
      trabajoRevisado: json['trabajo_revisado'],
      trabajoConcluido: json['trabajo_concluido'],
      comentarioTecnicos: json['comentario_tecnicos'],
      numeroPresupuesto: json['numero_presupuesto'],
      claveEntregaGeo: json['clave_entrega_geo'],
      claveRecogidaGeo: json['clave_recogida_geo'],
      trabajoTipoPresupuesto: json['trabajo_tipo_presupuesto'],
      desplazamientoTrabajo: json['desplazamiento_trabajo'],
      fechaLimite: json['fecha_limite'],
      usuarioLimite: json['usuario_limite'],
      cobradoTecnico: json['cobrado_tecnico'],
      importeTrabajo: json['importe_trabajo'],
      retiradaDeMaterial: json['retirada_de_material'],
      importeCobradoTecnico: json['importe_cobrado_tecnico'],
      comentarioPrivado: json['comentario_privado'],
      trabajoOrigen: json['trabajo_origen'],
      datosAlternativosCliente: json['datos_alternativos_cliente'],
      avisarFinalizar: json['avisar_finalizar'],
      trabajoQuickButton: json['trabajo_quick_button'],
      albaranValorado: json['albaran_valorado'],
      satisfaccionCliente: json['satisfaccion_cliente'],
      codComercial: json['cod_comercial'],
      responsableTrabajo: json['responsable_trabajo'],
      codAlmacenTrabajo: json['cod_almacen_trabajo'],
      pagoConTarjeta: json['pago_con_tarjeta'],
      requierePresupuesto: json['requiere_presupuesto'],
      trabajoRechazadoCliente: json['trabajo_rechazado_cliente'],
      notasPresupuesto: json['notas_presupuesto'],
      idTrabajoRetiradaMaterial: json['id_trabajo_retirada_material'],
      codEmpresaTrabajo: json['cod_empresa_trabajo'],
      materialPedido: json['material_pedido'],
      estadoMaterialPedido: json['estado_material_pedido'],
      materialPedidoListo: json['material_pedido_listo'],
      trabajoPermisoFacturarMovil: json['trabajo_permiso_facturar_movil'],
      importeTotalTrabajo: json['importe_total_trabajo'],
      costeTrabajo: json['coste_trabajo'],
      gestionResiduos: json['gestion_residuos'],
      limpiezaInstalacion: json['limpieza_instalacion'],
      ordenTrabajo: json['orden_trabajo'],
      numeroPedidoInterno: json['numero_pedido_interno'],
      caritasColores: json['caritas_colores'],
      tiempoRespuestaDeseado: json['tiempo_respuesta_deseado'],
      textoAvisoFinalizado: json['texto_aviso_finalizado'],
      creadoFinalizadoDesdePresupuesto:
          json['creado_finalizado_desde_presupuesto'],
      fechaEquiposEntregadosTaller: json['fecha_equipos_entregados_taller'],
      indicacionesEquiposEntregadosTaller:
          json['indicaciones_equipos_entregados_taller'],
      claveProyectoTrabajo: json['clave_proyecto_trabajo'],
      facturadoPorElTecnico: json['facturado_por_el_tecnico'],
      quickUsado: json['quick_usado'],
      ubicacionMaterialAsignado: json['ubicacion_material_asignado'],
      idMaquina: json['id_maquina'],
      ordenDeVisualizacion: json['orden_de_visualizacion'],
      descuentoGlobalDesdePresupuesto:
          json['descuento_global_desde_presupuesto'],
      codCaducidad: json['cod_caducidad'],
      unicoEquipo: json['unico_equipo'],
      formaPagoTecnico: json['forma_pago_tecnico'],
      creadoSinMovimientoStock: json['creado_sin_movimiento_stock'],
      mostrarMovilMaterialesPresupuesto:
          json['mostrar_movil_materiales_presupuesto'],
      claseEstado: json['ClaseEstado'],
      oRDENP: json['ORDENP']);

  Map<String, dynamic> toJson() => {
        'id_trabajo': idTrabajo,
        'cod_servicio': codServicio,
        'cod_equipo': codEquipo,
        'usuario': usuario,
        'fecha_asignada': fechaAsignada,
        'hora_asignada': horaAsignada,
        'fecha_inicio': fechaInicio,
        'fecha_fin': fechaFin,
        'hora_inicio': horaInicio,
        'hora_fin': horaFin,
        'estado': estado,
        'tipo': tipo,
        'comentario': comentario,
        'firma': firma,
        'fecha_creacion': fechaCreacion,
        'hora_creacion': horaCreacion,
        'cod_periodico': codPeriodico,
        'n_factura': nFactura,
        'descuento_ope': descuentoOpe,
        'descuento_mat': descuentoMat,
        'iva': iva,
        'presupuesto': presupuesto,
        'nofacturable': nofacturable,
        'automatico': automatico,
        'numero_pedido': numeroPedido,
        'tiempo_estimado': tiempoEstimado,
        'cod_contador': codContador,
        'tipo_mantenimiento_trabajo': tipoMantenimientoTrabajo,
        'urgente': urgente,
        'dependiente_correctivo': dependienteCorrectivo,
        'cod_acompanante': codAcompanante,
        'comentario_cliente': comentarioCliente,
        'certificado_firmado': certificadoFirmado,
        'trabajo_revisado': trabajoRevisado,
        'trabajo_concluido': trabajoConcluido,
        'comentario_tecnicos': comentarioTecnicos,
        'numero_presupuesto': numeroPresupuesto,
        'clave_entrega_geo': claveEntregaGeo,
        'clave_recogida_geo': claveRecogidaGeo,
        'trabajo_tipo_presupuesto': trabajoTipoPresupuesto,
        'desplazamiento_trabajo': desplazamientoTrabajo,
        'fecha_limite': fechaLimite,
        'usuario_limite': usuarioLimite,
        'cobrado_tecnico': cobradoTecnico,
        'importe_trabajo': importeTrabajo,
        'retirada_de_material': retiradaDeMaterial,
        'importe_cobrado_tecnico': importeCobradoTecnico,
        'comentario_privado': comentarioPrivado,
        'trabajo_origen': trabajoOrigen,
        'datos_alternativos_cliente': datosAlternativosCliente,
        'avisar_finalizar': avisarFinalizar,
        'trabajo_quick_button': trabajoQuickButton,
        'albaran_valorado': albaranValorado,
        'satisfaccion_cliente': satisfaccionCliente,
        'cod_comercial': codComercial,
        'responsable_trabajo': responsableTrabajo,
        'cod_almacen_trabajo': codAlmacenTrabajo,
        'pago_con_tarjeta': pagoConTarjeta,
        'requiere_presupuesto': requierePresupuesto,
        'trabajo_rechazado_cliente': trabajoRechazadoCliente,
        'notas_presupuesto': notasPresupuesto,
        'id_trabajo_retirada_material': idTrabajoRetiradaMaterial,
        'cod_empresa_trabajo': codEmpresaTrabajo,
        'material_pedido': materialPedido,
        'estado_material_pedido': estadoMaterialPedido,
        'material_pedido_listo': materialPedidoListo,
        'trabajo_permiso_facturar_movil': trabajoPermisoFacturarMovil,
        'importe_total_trabajo': importeTotalTrabajo,
        'coste_trabajo': costeTrabajo,
        'gestion_residuos': gestionResiduos,
        'limpieza_instalacion': limpiezaInstalacion,
        'orden_trabajo': ordenTrabajo,
        'numero_pedido_interno': numeroPedidoInterno,
        'caritas_colores': caritasColores,
        'tiempo_respuesta_deseado': tiempoRespuestaDeseado,
        'texto_aviso_finalizado': textoAvisoFinalizado,
        'creado_finalizado_desde_presupuesto': creadoFinalizadoDesdePresupuesto,
        'fecha_equipos_entregados_taller': fechaEquiposEntregadosTaller,
        'indicaciones_equipos_entregados_taller':
            indicacionesEquiposEntregadosTaller,
        'clave_proyecto_trabajo': claveProyectoTrabajo,
        'facturado_por_el_tecnico': facturadoPorElTecnico,
        'quick_usado': quickUsado,
        'ubicacion_material_asignado': ubicacionMaterialAsignado,
        'id_maquina': idMaquina,
        'orden_de_visualizacion': ordenDeVisualizacion,
        'descuento_global_desde_presupuesto': descuentoGlobalDesdePresupuesto,
        'cod_caducidad': codCaducidad,
        'unico_equipo': unicoEquipo,
        'forma_pago_tecnico': formaPagoTecnico,
        'creado_sin_movimiento_stock': creadoSinMovimientoStock,
        'mostrar_movil_materiales_presupuesto':
            mostrarMovilMaterialesPresupuesto,
        'ClaseEstado': claseEstado,
        'ORDENP': oRDENP,
      };
}
