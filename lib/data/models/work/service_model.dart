import '../../../domain/entities/work/service.dart';

class ServiceModel extends Service {
  int? codCliente;
  int? codServicio;
  String? nombreServicio;
  String? direccion;
  String? direccion2Servicio;
  String? poblacion;
  String? provincia;
  String? codpostal;
  String? telefono;
  String? fax;
  String? email;
  String? descripcionServicio;
  String? contacto;
  String? fechaAlta;
  String? comentario;
  String? fechaContrato;
  String? contrato;
  String? quien;
  int? descuento;
  int? activo;
  String? servicioCif;
  int? descuentoMaterial;
  int? importeMinimoFactura;
  int? tipoFacturacion;
  String? zona;
  int? codCliente2;
  String? condicionante;
  int? importeCondicionante;
  int? cargoPedido;
  int? tipoInstalacion;
  String? codSigrid;
  int? claveTarifa;
  String? movilContacto;
  String? tipoServicio;
  String? comunidad;
  String? responsableServicio;
  String? impagado;
  String? enviarEncuesta;
  String? refereciaPropiaCliente;
  String? enviarCitaEmail;
  String? coordenadasGps;
  String? fechaBaja;
  String? fechaCaducidadContrato;
  String? enviarAlbaranAutomaticamente;
  double? importeContrato;
  String? servicioCodSucursal;
  String? detallePreciosMovil;
  int? codEmpresaFacturacion;
  String? tpvServicioContado;
  String? infoAdicionalErvicio;
  String? codComercial;
  int? comisionCuota;
  int? coeficienteComision;
  String? condicionesEspecialesContrato;
  String? ibanServicio;
  String? formaPagoServicio;
  String? bicServicio;
  String? permisoFacturarMovil;
  int? descuentoCuota;
  String? contratoPresupuestoAsociado;
  String? responsableServicioTrabajo;
  String? fechaRevisionAnteriorMantenedor;
  String? anteriorMantenedor;
  String? nombreCargoResponsableInstalacion;
  String? nombreCargoResponsableMantenimiento;
  String? fechaInstalacion;
  String? fechaUltimaInspeccionOca;
  String? organismoOca;
  String? fechaProximaInspeccionOca;
  String? oficinaContableServicio;
  String? unidadTramitadoraServicio;
  String? organoGestorServicio;
  String? desOficinaContable;
  String? desUnidadTramitadora;
  String? desOrganoGestor;
  String? idiomaServicio;
  String? fechaEmisionContrato;
  String? organoProponente;
  String? desOrganoProponente;
  String? comentarioAdministracion;
  String? usuarioBaja;
  String? ultimaModificacion;

  ServiceModel({
    this.codCliente,
    this.codServicio,
    this.nombreServicio,
    this.direccion,
    this.direccion2Servicio,
    this.poblacion,
    this.provincia,
    this.codpostal,
    this.telefono,
    this.fax,
    this.email,
    this.descripcionServicio,
    this.contacto,
    this.fechaAlta,
    this.comentario,
    this.fechaContrato,
    this.contrato,
    this.quien,
    this.descuento,
    this.activo,
    this.servicioCif,
    this.descuentoMaterial,
    this.importeMinimoFactura,
    this.tipoFacturacion,
    this.zona,
    this.codCliente2,
    this.condicionante,
    this.importeCondicionante,
    this.cargoPedido,
    this.tipoInstalacion,
    this.codSigrid,
    this.claveTarifa,
    this.movilContacto,
    this.tipoServicio,
    this.comunidad,
    this.responsableServicio,
    this.impagado,
    this.enviarEncuesta,
    this.refereciaPropiaCliente,
    this.enviarCitaEmail,
    this.coordenadasGps,
    this.fechaBaja,
    this.fechaCaducidadContrato,
    this.enviarAlbaranAutomaticamente,
    this.importeContrato,
    this.servicioCodSucursal,
    this.detallePreciosMovil,
    this.codEmpresaFacturacion,
    this.tpvServicioContado,
    this.infoAdicionalErvicio,
    this.codComercial,
    this.comisionCuota,
    this.coeficienteComision,
    this.condicionesEspecialesContrato,
    this.ibanServicio,
    this.formaPagoServicio,
    this.bicServicio,
    this.permisoFacturarMovil,
    this.descuentoCuota,
    this.contratoPresupuestoAsociado,
    this.responsableServicioTrabajo,
    this.fechaRevisionAnteriorMantenedor,
    this.anteriorMantenedor,
    this.nombreCargoResponsableInstalacion,
    this.nombreCargoResponsableMantenimiento,
    this.fechaInstalacion,
    this.fechaUltimaInspeccionOca,
    this.organismoOca,
    this.fechaProximaInspeccionOca,
    this.oficinaContableServicio,
    this.unidadTramitadoraServicio,
    this.organoGestorServicio,
    this.desOficinaContable,
    this.desUnidadTramitadora,
    this.desOrganoGestor,
    this.idiomaServicio,
    this.fechaEmisionContrato,
    this.organoProponente,
    this.desOrganoProponente,
    this.comentarioAdministracion,
    this.usuarioBaja,
    this.ultimaModificacion,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
      codCliente: json['cod_cliente'],
      codServicio: json['cod_servicio'],
      nombreServicio: json['nombre_servicio'],
      direccion: json['direccion'],
      direccion2Servicio: json['direccion2_servicio'],
      poblacion: json['poblacion'],
      provincia: json['provincia'],
      codpostal: json['codpostal'],
      telefono: json['telefono'],
      fax: json['fax'],
      email: json['email'],
      descripcionServicio: json['descripcion_servicio'],
      contacto: json['contacto'],
      fechaAlta: json['fecha_alta'],
      comentario: json['comentario'],
      fechaContrato: json['fecha_contrato'],
      contrato: json['contrato'],
      quien: json['quien'],
      descuento: json['descuento'],
      activo: json['activo'],
      servicioCif: json['servicio_cif'],
      descuentoMaterial: json['descuento_material'],
      importeMinimoFactura: json['importe_minimo_factura'],
      tipoFacturacion: json['tipo_facturacion'],
      zona: json['zona'],
      codCliente2: json['cod_cliente2'],
      condicionante: json['condicionante'],
      importeCondicionante: json['importe_condicionante'],
      cargoPedido: json['cargo_pedido'],
      tipoInstalacion: json['tipo_instalacion'],
      codSigrid: json['cod_sigrid'],
      claveTarifa: json['clave_tarifa'],
      movilContacto: json['movil_contacto'],
      tipoServicio: json['tipo_servicio'],
      comunidad: json['comunidad'],
      responsableServicio: json['responsable_servicio'],
      impagado: json['impagado'],
      enviarEncuesta: json['enviar_encuesta'],
      refereciaPropiaCliente: json['referecia_propia_cliente'],
      enviarCitaEmail: json['enviar_cita_email'],
      coordenadasGps: json['coordenadas_gps'],
      fechaBaja: json['fecha_baja'],
      fechaCaducidadContrato: json['fecha_caducidad_contrato'],
      enviarAlbaranAutomaticamente: json['enviar_albaran_automaticamente'],
      importeContrato: json['importe_contrato']?.toDouble(),
      servicioCodSucursal: json['servicio_cod_sucursal'],
      detallePreciosMovil: json['detalle_precios_movil'],
      codEmpresaFacturacion: json['cod_empresa_facturacion'],
      tpvServicioContado: json['tpv_servicio_contado'],
      infoAdicionalErvicio: json['info_adicional_ervicio'],
      codComercial: json['cod_comercial'],
      comisionCuota: json['comision_cuota'],
      coeficienteComision: json['coeficiente_comision'],
      condicionesEspecialesContrato: json['condiciones_especiales_contrato'],
      ibanServicio: json['iban_servicio'],
      formaPagoServicio: json['forma_pago_servicio'],
      bicServicio: json['bic_servicio'],
      permisoFacturarMovil: json['permiso_facturar_movil'],
      descuentoCuota: json['descuento_cuota'],
      contratoPresupuestoAsociado: json['contrato_presupuesto_asociado'],
      responsableServicioTrabajo: json['responsable_servicio_trabajo'],
      fechaRevisionAnteriorMantenedor:
          json['fecha_revision_anterior_mantenedor'],
      anteriorMantenedor: json['anterior_mantenedor'],
      nombreCargoResponsableInstalacion:
          json['nombre_cargo_responsable_instalacion'],
      nombreCargoResponsableMantenimiento:
          json['nombre_cargo_responsable_mantenimiento'],
      fechaInstalacion: json['fecha_instalacion'],
      fechaUltimaInspeccionOca: json['fecha_ultima_inspeccion_oca'],
      organismoOca: json['organismo_oca'],
      fechaProximaInspeccionOca: json['fecha_proxima_inspeccion_oca'],
      oficinaContableServicio: json['oficina_contable_servicio'],
      unidadTramitadoraServicio: json['unidad_tramitadora_servicio'],
      organoGestorServicio: json['organo_gestor_servicio'],
      desOficinaContable: json['des_oficina_contable'],
      desUnidadTramitadora: json['des_unidad_tramitadora'],
      desOrganoGestor: json['des_organo_gestor'],
      idiomaServicio: json['idioma_servicio'],
      fechaEmisionContrato: json['fecha_emision_contrato'],
      organoProponente: json['organo_proponente'],
      desOrganoProponente: json['des_organo_proponente'],
      comentarioAdministracion: json['comentario_administracion'],
      usuarioBaja: json['usuario_baja'],
      ultimaModificacion: json['ultima_modificacion']);

  Map<String, dynamic> toJson() => {
        'cod_cliente': codCliente,
        'cod_servicio': codServicio,
        'nombre_servicio': nombreServicio,
        'direccion': direccion,
        'direccion2_servicio': direccion2Servicio,
        'poblacion': poblacion,
        'provincia': provincia,
        'codpostal': codpostal,
        'telefono': telefono,
        'fax': fax,
        'email': email,
        'descripcion_servicio': descripcionServicio,
        'contacto': contacto,
        'fecha_alta': fechaAlta,
        'comentario': comentario,
        'fecha_contrato': fechaContrato,
        'contrato': contrato,
        'quien': quien,
        'descuento': descuento,
        'activo': activo,
        'servicio_cif': servicioCif,
        'descuento_material': descuentoMaterial,
        'importe_minimo_factura': importeMinimoFactura,
        'tipo_facturacion': tipoFacturacion,
        'zona': zona,
        'cod_cliente2': codCliente2,
        'condicionante': condicionante,
        'importe_condicionante': importeCondicionante,
        'cargo_pedido': cargoPedido,
        'tipo_instalacion': tipoInstalacion,
        'cod_sigrid': codSigrid,
        'clave_tarifa': claveTarifa,
        'movil_contacto': movilContacto,
        'tipo_servicio': tipoServicio,
        'comunidad': comunidad,
        'responsable_servicio': responsableServicio,
        'impagado': impagado,
        'enviar_encuesta': enviarEncuesta,
        'referecia_propia_cliente': refereciaPropiaCliente,
        'enviar_cita_email': enviarCitaEmail,
        'coordenadas_gps': coordenadasGps,
        'fecha_baja': fechaBaja,
        'fecha_caducidad_contrato': fechaCaducidadContrato,
        'enviar_albaran_automaticamente': enviarAlbaranAutomaticamente,
        'importe_contrato': importeContrato,
        'servicio_cod_sucursal': servicioCodSucursal,
        'detalle_precios_movil': detallePreciosMovil,
        'cod_empresa_facturacion': codEmpresaFacturacion,
        'tpv_servicio_contado': tpvServicioContado,
        'info_adicional_ervicio': infoAdicionalErvicio,
        'cod_comercial': codComercial,
        'comision_cuota': comisionCuota,
        'coeficiente_comision': coeficienteComision,
        'condiciones_especiales_contrato': condicionesEspecialesContrato,
        'iban_servicio': ibanServicio,
        'forma_pago_servicio': formaPagoServicio,
        'bic_servicio': bicServicio,
        'permiso_facturar_movil': permisoFacturarMovil,
        'descuento_cuota': descuentoCuota,
        'contrato_presupuesto_asociado': contratoPresupuestoAsociado,
        'responsable_servicio_trabajo': responsableServicioTrabajo,
        'fecha_revision_anterior_mantenedor': fechaRevisionAnteriorMantenedor,
        'anterior_mantenedor': anteriorMantenedor,
        'nombre_cargo_responsable_instalacion':
            nombreCargoResponsableInstalacion,
        'nombre_cargo_responsable_mantenimiento':
            nombreCargoResponsableMantenimiento,
        'fecha_instalacion': fechaInstalacion,
        'fecha_ultima_inspeccion_oca': fechaUltimaInspeccionOca,
        'organismo_oca': organismoOca,
        'fecha_proxima_inspeccion_oca': fechaProximaInspeccionOca,
        'oficina_contable_servicio': oficinaContableServicio,
        'unidad_tramitadora_servicio': unidadTramitadoraServicio,
        'organo_gestor_servicio': organoGestorServicio,
        'des_oficina_contable': desOficinaContable,
        'des_unidad_tramitadora': desUnidadTramitadora,
        'des_organo_gestor': desOrganoGestor,
        'idioma_servicio': idiomaServicio,
        'fecha_emision_contrato': fechaEmisionContrato,
        'organo_proponente': organoProponente,
        'des_organo_proponente': desOrganoProponente,
        'comentario_administracion': comentarioAdministracion,
        'usuario_baja': usuarioBaja,
        'ultima_modificacion': ultimaModificacion,
      };
}
