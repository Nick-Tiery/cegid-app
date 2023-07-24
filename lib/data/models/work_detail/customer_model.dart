import '../../../domain/entities/work_detail/customer.dart';

class CustomerModel extends Customer {
  int? codCliente;
  String? empresa;
  String? direccion;
  String? poblacion;
  String? provincia;
  String? codpostal;
  String? telefono;
  String? fax;
  String? contacto;
  String? fechaAlta;
  int? estado;
  int? descuento;
  String? emailFacturacion;
  String? subcuenta;
  String? clienteCif;
  double? iva;
  int? descuentoMaterial;
  String? passwordCliente;
  String? refFacturaplus;
  String? codPagoFacturaplus;
  String? soportaFacturas;
  int? riesgoPedidos;
  String? cuentaBancaria;
  String? enviarCarta;
  String? clienteAccesos;
  String? comentarioFacturacion;
  String? tipoCliente;
  String? nombreComercial;
  String? responsableCliente;
  String? formaPago;
  String? impagado;
  String? zonaClientesPresupuestos;
  String? fechaBajaCliente;
  String? bicBanco;
  String? clienteCodSucursal;
  String? informacionAdicional;
  int? codEmpresaFacturacion;
  String? datosEnvioFactura;
  int? recargoEquivalencia;
  String? oficinaContable;
  String? unidadTramitadora;
  String? organoGestor;
  String? monedaCliente;
  String? responsableContratoSeguridad;
  String? pais;
  String? desOficinaContable;
  String? desUnidadTramitadora;
  String? desOrganoGestor;
  String? idiomaWeb;
  String? webCliente;
  String? competidor;
  String? enviarPublicidad;
  String? organoProponente;
  String? desOrganoProponente;
  String? usuarioBaja;
  String? ultimaModificacion;

  CustomerModel({
    this.codCliente,
    this.empresa,
    this.direccion,
    this.poblacion,
    this.provincia,
    this.codpostal,
    this.telefono,
    this.fax,
    this.contacto,
    this.fechaAlta,
    this.estado,
    this.descuento,
    this.emailFacturacion,
    this.subcuenta,
    this.clienteCif,
    this.iva,
    this.descuentoMaterial,
    this.passwordCliente,
    this.refFacturaplus,
    this.codPagoFacturaplus,
    this.soportaFacturas,
    this.riesgoPedidos,
    this.cuentaBancaria,
    this.enviarCarta,
    this.clienteAccesos,
    this.comentarioFacturacion,
    this.tipoCliente,
    this.nombreComercial,
    this.responsableCliente,
    this.formaPago,
    this.impagado,
    this.zonaClientesPresupuestos,
    this.fechaBajaCliente,
    this.bicBanco,
    this.clienteCodSucursal,
    this.informacionAdicional,
    this.codEmpresaFacturacion,
    this.datosEnvioFactura,
    this.recargoEquivalencia,
    this.oficinaContable,
    this.unidadTramitadora,
    this.organoGestor,
    this.monedaCliente,
    this.responsableContratoSeguridad,
    this.pais,
    this.desOficinaContable,
    this.desUnidadTramitadora,
    this.desOrganoGestor,
    this.idiomaWeb,
    this.webCliente,
    this.competidor,
    this.enviarPublicidad,
    this.organoProponente,
    this.desOrganoProponente,
    this.usuarioBaja,
    this.ultimaModificacion,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      codCliente: json['cod_cliente'],
      empresa: json['empresa'],
      direccion: json['direccion'],
      poblacion: json['poblacion'],
      provincia: json['provincia'],
      codpostal: json['codpostal'],
      telefono: json['telefono'],
      fax: json['fax'],
      contacto: json['contacto'],
      fechaAlta: json['fecha_alta'],
      estado: json['estado'],
      descuento: json['descuento'],
      emailFacturacion: json['email_facturacion'],
      subcuenta: json['subcuenta'],
      clienteCif: json['cliente_cif'],
      iva: json['iva'],
      descuentoMaterial: json['descuento_material'],
      passwordCliente: json['password_cliente'],
      refFacturaplus: json['ref_facturaplus'],
      codPagoFacturaplus: json['cod_pago_facturaplus'],
      soportaFacturas: json['soporta_facturas'],
      riesgoPedidos: json['riesgo_pedidos'],
      cuentaBancaria: json['cuenta_bancaria'],
      enviarCarta: json['enviar_carta'],
      clienteAccesos: json['cliente_accesos'],
      comentarioFacturacion: json['comentario_facturacion'],
      tipoCliente: json['tipo_cliente'],
      nombreComercial: json['nombre_comercial'],
      responsableCliente: json['responsable_cliente'],
      formaPago: json['forma_pago'],
      impagado: json['impagado'],
      zonaClientesPresupuestos: json['zona_clientes_presupuestos'],
      fechaBajaCliente: json['fecha_baja_cliente'],
      bicBanco: json['bic_banco'],
      clienteCodSucursal: json['cliente_cod_sucursal'],
      informacionAdicional: json['informacion_adicional'],
      codEmpresaFacturacion: json['cod_empresa_facturacion'],
      datosEnvioFactura: json['datos_envio_factura'],
      recargoEquivalencia: json['recargo_equivalencia'],
      oficinaContable: json['oficina_contable'],
      unidadTramitadora: json['unidad_tramitadora'],
      organoGestor: json['organo_gestor'],
      monedaCliente: json['moneda_cliente'],
      responsableContratoSeguridad: json['responsable_contrato_seguridad'],
      pais: json['pais'],
      desOficinaContable: json['des_oficina_contable'],
      desUnidadTramitadora: json['des_unidad_tramitadora'],
      desOrganoGestor: json['des_organo_gestor'],
      idiomaWeb: json['idioma_web'],
      webCliente: json['web_cliente'],
      competidor: json['competidor'],
      enviarPublicidad: json['enviar_publicidad'],
      organoProponente: json['organo_proponente'],
      desOrganoProponente: json['des_organo_proponente'],
      usuarioBaja: json['usuario_baja'],
      ultimaModificacion: json['ultima_modificacion'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cod_cliente': codCliente,
      'empresa': empresa,
      'direccion': direccion,
      'poblacion': poblacion,
      'provincia': provincia,
      'codpostal': codpostal,
      'telefono': telefono,
      'fax': fax,
      'contacto': contacto,
      'fecha_alta': fechaAlta,
      'estado': estado,
      'descuento': descuento,
      'email_facturacion': emailFacturacion,
      'subcuenta': subcuenta,
      'cliente_cif': clienteCif,
      'iva': iva,
      'descuento_material': descuentoMaterial,
      'password_cliente': passwordCliente,
      'ref_facturaplus': refFacturaplus,
      'cod_pago_facturaplus': codPagoFacturaplus,
      'soporta_facturas': soportaFacturas,
      'riesgo_pedidos': riesgoPedidos,
      'cuenta_bancaria': cuentaBancaria,
      'enviar_carta': enviarCarta,
      'cliente_accesos': clienteAccesos,
      'comentario_facturacion': comentarioFacturacion,
      'tipo_cliente': tipoCliente,
      'nombre_comercial': nombreComercial,
      'responsable_cliente': responsableCliente,
      'forma_pago': formaPago,
      'impagado': impagado,
      'zona_clientes_presupuestos': zonaClientesPresupuestos,
      'fecha_baja_cliente': fechaBajaCliente,
      'bic_banco': bicBanco,
      'cliente_cod_sucursal': clienteCodSucursal,
      'informacion_adicional': informacionAdicional,
      'cod_empresa_facturacion': codEmpresaFacturacion,
      'datos_envio_factura': datosEnvioFactura,
      'recargo_equivalencia': recargoEquivalencia,
      'oficina_contable': oficinaContable,
      'unidad_tramitadora': unidadTramitadora,
      'organo_gestor': organoGestor,
      'moneda_cliente': monedaCliente,
      'responsable_contrato_seguridad': responsableContratoSeguridad,
      'pais': pais,
      'des_oficina_contable': desOficinaContable,
      'des_unidad_tramitadora': desUnidadTramitadora,
      'des_organo_gestor': desOrganoGestor,
      'idioma_web': idiomaWeb,
      'web_cliente': webCliente,
      'competidor': competidor,
      'enviar_publicidad': enviarPublicidad,
      'organo_proponente': organoProponente,
      'des_organo_proponente': desOrganoProponente,
      'usuario_baja': usuarioBaja,
      'ultima_modificacion': ultimaModificacion,
    };
  }
}
