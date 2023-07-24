import '../../../domain/entities/user_login/technician.dart';

class TechnicianModel extends Technician {
  String? usuario;
  String? nombre;
  String? apellidos;
  String? direccionTecnico;
  String? categoria;
  int? orden;
  int? mostrar;
  int? diasPorAno;
  String? panel;
  String? nif;
  String? email;
  int? almacenPropio;
  int? codAlmacen;
  double? costeHora;
  String? codSigrid;
  String? movil;
  int? comisionTecnico;
  String? avisarPorEmail;
  String? tecnicoActivo;
  String? gmailUser;
  String? gmailPassword;
  String? compartirTrabajos;
  String? usuarioResponsable;
  String? moverTrabajos;
  String? limitadoResponsable;
  String? codSucursal;
  String? cambiarAlmacen;
  String? fechaCreacionTecnico;
  String? compartidoExclusivo;
  String? tecnicoVirtual;
  String? tecnicoPermisoFacturar;
  String? bajaDefinitiva;
  String? encriptado;
  String? encriptadoUsuario;
  String? poblacionTecnico;
  String? permisoVerPresupuestos;
  String? permisoReasignarTrabajosMovil;
  String? permisoVerDocumentos;
  String? permisoVerFacturas;
  String? permisoCrearDependiente;
  String? permisoCrearDependienteCorrectivo;
  String? tecnicoComentario;
  String? permisoCambiarPreciosMateriales;
  String? permisoCambiarPreciosOperaciones;
  String? mostrarBonos;
  String? soloPresupuestosPropiosEnPanel;
  String? permisoVerPreciosMovil;
  String? tipologiasRetringidas;
  String? esColaborador;
  String? foto;

  TechnicianModel({
    this.usuario,
    this.nombre,
    this.apellidos,
    this.direccionTecnico,
    this.categoria,
    this.orden,
    this.mostrar,
    this.diasPorAno,
    this.panel,
    this.nif,
    this.email,
    this.almacenPropio,
    this.codAlmacen,
    this.costeHora,
    this.codSigrid,
    this.movil,
    this.comisionTecnico,
    this.avisarPorEmail,
    this.tecnicoActivo,
    this.gmailUser,
    this.gmailPassword,
    this.compartirTrabajos,
    this.usuarioResponsable,
    this.moverTrabajos,
    this.limitadoResponsable,
    this.codSucursal,
    this.cambiarAlmacen,
    this.fechaCreacionTecnico,
    this.compartidoExclusivo,
    this.tecnicoVirtual,
    this.tecnicoPermisoFacturar,
    this.bajaDefinitiva,
    this.encriptado,
    this.encriptadoUsuario,
    this.poblacionTecnico,
    this.permisoVerPresupuestos,
    this.permisoReasignarTrabajosMovil,
    this.permisoVerDocumentos,
    this.permisoVerFacturas,
    this.permisoCrearDependiente,
    this.permisoCrearDependienteCorrectivo,
    this.tecnicoComentario,
    this.permisoCambiarPreciosMateriales,
    this.permisoCambiarPreciosOperaciones,
    this.mostrarBonos,
    this.soloPresupuestosPropiosEnPanel,
    this.permisoVerPreciosMovil,
    this.tipologiasRetringidas,
    this.esColaborador,
    this.foto,
  });

  factory TechnicianModel.fromJson(Map<String, dynamic> json) =>
      TechnicianModel(
          usuario: json['usuario'],
          nombre: json['nombre'],
          apellidos: json['apellidos'],
          direccionTecnico: json['direccion_tecnico'],
          categoria: json['categoria'],
          orden: json['orden'],
          mostrar: json['mostrar'],
          diasPorAno: json['dias_por_ano'],
          panel: json['panel'],
          nif: json['nif'],
          email: json['email'],
          almacenPropio: json['almacen_propio'],
          codAlmacen: json['cod_almacen'],
          costeHora: json['coste_hora'],
          codSigrid: json['cod_sigrid'],
          movil: json['movil'],
          comisionTecnico: json['comision_tecnico'],
          avisarPorEmail: json['avisar_por_email'],
          tecnicoActivo: json['tecnico_activo'],
          gmailUser: json['gmail_user'],
          gmailPassword: json['gmail_password'],
          compartirTrabajos: json['compartir_trabajos'],
          usuarioResponsable: json['usuario_responsable'],
          moverTrabajos: json['mover_trabajos'],
          limitadoResponsable: json['limitado_responsable'],
          codSucursal: json['cod_sucursal'],
          cambiarAlmacen: json['cambiar_almacen'],
          fechaCreacionTecnico: json['fecha_creacion_tecnico'],
          compartidoExclusivo: json['compartido_exclusivo'],
          tecnicoVirtual: json['tecnico_virtual'],
          tecnicoPermisoFacturar: json['tecnico_permiso_facturar'],
          bajaDefinitiva: json['baja_definitiva'],
          encriptado: json['encriptado'],
          encriptadoUsuario: json['encriptado_usuario'],
          poblacionTecnico: json['poblacion_tecnico'],
          permisoVerPresupuestos: json['permiso_ver_presupuestos'],
          permisoReasignarTrabajosMovil:
              json['permiso_reasignar_trabajos_movil'],
          permisoVerDocumentos: json['permiso_ver_documentos'],
          permisoVerFacturas: json['permiso_ver_facturas'],
          permisoCrearDependiente: json['permiso_crear_dependiente'],
          permisoCrearDependienteCorrectivo:
              json['permiso_crear_dependiente_correctivo'],
          tecnicoComentario: json['tecnico_comentario'],
          permisoCambiarPreciosMateriales:
              json['permiso_cambiar_precios_materiales'],
          permisoCambiarPreciosOperaciones:
              json['permiso_cambiar_precios_operaciones'],
          mostrarBonos: json['mostrar_bonos'],
          soloPresupuestosPropiosEnPanel:
              json['solo_presupuestos_propios_en_panel'],
          permisoVerPreciosMovil: json['permiso_ver_precios_movil'],
          tipologiasRetringidas: json['tipologias_retringidas'],
          esColaborador: json['es_colaborador'],
          foto: json['foto']);

  Map<String, dynamic> toJson() => {
        'usuario': usuario,
        'nombre': nombre,
        'apellidos': apellidos,
        'direccion_tecnico': direccionTecnico,
        'categoria': categoria,
        'orden': orden,
        'mostrar': mostrar,
        'dias_por_ano': diasPorAno,
        'panel': panel,
        'nif': nif,
        'email': email,
        'almacen_propio': almacenPropio,
        'cod_almacen': codAlmacen,
        'coste_hora': costeHora,
        'cod_sigrid': codSigrid,
        'movil': movil,
        'comision_tecnico': comisionTecnico,
        'avisar_por_email': avisarPorEmail,
        'tecnico_activo': tecnicoActivo,
        'gmail_user': gmailUser,
        'gmail_password': gmailPassword,
        'compartir_trabajos': compartirTrabajos,
        'usuario_responsable': usuarioResponsable,
        'mover_trabajos': moverTrabajos,
        'limitado_responsable': limitadoResponsable,
        'cod_sucursal': codSucursal,
        'cambiar_almacen': cambiarAlmacen,
        'fecha_creacion_tecnico': fechaCreacionTecnico,
        'compartido_exclusivo': compartidoExclusivo,
        'tecnico_virtual': tecnicoVirtual,
        'tecnico_permiso_facturar': tecnicoPermisoFacturar,
        'baja_definitiva': bajaDefinitiva,
        'encriptado': encriptado,
        'encriptado_usuario': encriptadoUsuario,
        'poblacion_tecnico': poblacionTecnico,
        'permiso_ver_presupuestos': permisoVerPresupuestos,
        'permiso_reasignar_trabajos_movil': permisoReasignarTrabajosMovil,
        'permiso_ver_documentos': permisoVerDocumentos,
        'permiso_ver_facturas': permisoVerFacturas,
        'permiso_crear_dependiente': permisoCrearDependiente,
        'permiso_crear_dependiente_correctivo':
            permisoCrearDependienteCorrectivo,
        'tecnico_comentario': tecnicoComentario,
        'permiso_cambiar_precios_materiales': permisoCambiarPreciosMateriales,
        'permiso_cambiar_precios_operaciones': permisoCambiarPreciosOperaciones,
        'mostrar_bonos': mostrarBonos,
        'solo_presupuestos_propios_en_panel': soloPresupuestosPropiosEnPanel,
        'permiso_ver_precios_movil': permisoVerPreciosMovil,
        'tipologias_retringidas': tipologiasRetringidas,
        'es_colaborador': esColaborador,
        'foto': foto,
      };
}
