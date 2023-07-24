// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Gestiona3W`
  String get app_company {
    return Intl.message(
      'Gestiona3W',
      name: 'app_company',
      desc: '',
      args: [],
    );
  }

  /// `Gestion Remota`
  String get app_title {
    return Intl.message(
      'Gestion Remota',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error_title {
    return Intl.message(
      'Error',
      name: 'error_title',
      desc: '',
      args: [],
    );
  }

  /// `Datos incorrectos, vuelve a intentarlo`
  String get error_subtitle {
    return Intl.message(
      'Datos incorrectos, vuelve a intentarlo',
      name: 'error_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `C.I.F Empresa`
  String get login_cif {
    return Intl.message(
      'C.I.F Empresa',
      name: 'login_cif',
      desc: '',
      args: [],
    );
  }

  /// `Usuario`
  String get login_user {
    return Intl.message(
      'Usuario',
      name: 'login_user',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get login_pass {
    return Intl.message(
      'Contraseña',
      name: 'login_pass',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesión con otra cuenta`
  String get login_another_account {
    return Intl.message(
      'Iniciar sesión con otra cuenta',
      name: 'login_another_account',
      desc: '',
      args: [],
    );
  }

  /// `Acceder`
  String get login_button {
    return Intl.message(
      'Acceder',
      name: 'login_button',
      desc: '',
      args: [],
    );
  }

  /// `Lo que tienes para hoy`
  String get have_today {
    return Intl.message(
      'Lo que tienes para hoy',
      name: 'have_today',
      desc: '',
      args: [],
    );
  }

  /// `Ubicaciones - Ruta`
  String get locations_route {
    return Intl.message(
      'Ubicaciones - Ruta',
      name: 'locations_route',
      desc: '',
      args: [],
    );
  }

  /// `Periódico`
  String get type_p {
    return Intl.message(
      'Periódico',
      name: 'type_p',
      desc: '',
      args: [],
    );
  }

  /// `Aviso`
  String get type_a {
    return Intl.message(
      'Aviso',
      name: 'type_a',
      desc: '',
      args: [],
    );
  }

  /// `Dependiente`
  String get type_d {
    return Intl.message(
      'Dependiente',
      name: 'type_d',
      desc: '',
      args: [],
    );
  }

  /// `Fichaje`
  String get option_signing {
    return Intl.message(
      'Fichaje',
      name: 'option_signing',
      desc: '',
      args: [],
    );
  }

  /// `Mis Trabajos`
  String get option_my_works {
    return Intl.message(
      'Mis Trabajos',
      name: 'option_my_works',
      desc: '',
      args: [],
    );
  }

  /// `Equipo`
  String get option_equipment {
    return Intl.message(
      'Equipo',
      name: 'option_equipment',
      desc: '',
      args: [],
    );
  }

  /// `Ausencias`
  String get option_absence {
    return Intl.message(
      'Ausencias',
      name: 'option_absence',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get option_stock {
    return Intl.message(
      'Stock',
      name: 'option_stock',
      desc: '',
      args: [],
    );
  }

  /// `Ayuda`
  String get option_help {
    return Intl.message(
      'Ayuda',
      name: 'option_help',
      desc: '',
      args: [],
    );
  }

  /// `Importe:`
  String get estimated_amount {
    return Intl.message(
      'Importe:',
      name: 'estimated_amount',
      desc: '',
      args: [],
    );
  }

  /// `Cambiar de cuenta`
  String get change_account {
    return Intl.message(
      'Cambiar de cuenta',
      name: 'change_account',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get logout {
    return Intl.message(
      'Cerrar sesión',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Mover`
  String get move {
    return Intl.message(
      'Mover',
      name: 'move',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar Trabajo`
  String get init_work {
    return Intl.message(
      'Iniciar Trabajo',
      name: 'init_work',
      desc: '',
      args: [],
    );
  }

  /// `Trabajo`
  String get work {
    return Intl.message(
      'Trabajo',
      name: 'work',
      desc: '',
      args: [],
    );
  }

  /// `Servicio`
  String get service {
    return Intl.message(
      'Servicio',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Periodicidades`
  String get periodicity {
    return Intl.message(
      'Periodicidades',
      name: 'periodicity',
      desc: '',
      args: [],
    );
  }

  /// `Equipos`
  String get summary_equipment {
    return Intl.message(
      'Equipos',
      name: 'summary_equipment',
      desc: '',
      args: [],
    );
  }

  /// `Administrador`
  String get admin {
    return Intl.message(
      'Administrador',
      name: 'admin',
      desc: '',
      args: [],
    );
  }

  /// `Cliente`
  String get customer {
    return Intl.message(
      'Cliente',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Empresa interna`
  String get company {
    return Intl.message(
      'Empresa interna',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de creación`
  String get created_date {
    return Intl.message(
      'Fecha de creación',
      name: 'created_date',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo estimado de realización (min)`
  String get estimated_time {
    return Intl.message(
      'Tiempo estimado de realización (min)',
      name: 'estimated_time',
      desc: '',
      args: [],
    );
  }

  /// `Último trabajo de mantenimiento`
  String get last_work {
    return Intl.message(
      'Último trabajo de mantenimiento',
      name: 'last_work',
      desc: '',
      args: [],
    );
  }

  /// `Comentario`
  String get comment {
    return Intl.message(
      'Comentario',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `No Existe`
  String get not_exist {
    return Intl.message(
      'No Existe',
      name: 'not_exist',
      desc: '',
      args: [],
    );
  }

  /// `El nombre no puede estar vacío.`
  String get new_user_name_empty {
    return Intl.message(
      'El nombre no puede estar vacío.',
      name: 'new_user_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `La contraseña debe ser igual o superior a 6 carácteres.`
  String get new_user_wrong_password {
    return Intl.message(
      'La contraseña debe ser igual o superior a 6 carácteres.',
      name: 'new_user_wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Introduce un CIF/NIF válido.`
  String get add_cif {
    return Intl.message(
      'Introduce un CIF/NIF válido.',
      name: 'add_cif',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de Servicio`
  String get service_name {
    return Intl.message(
      'Nombre de Servicio',
      name: 'service_name',
      desc: '',
      args: [],
    );
  }

  /// `Tipo de Servicio`
  String get service_type {
    return Intl.message(
      'Tipo de Servicio',
      name: 'service_type',
      desc: '',
      args: [],
    );
  }

  /// `Técnico responsable`
  String get responsible_technician {
    return Intl.message(
      'Técnico responsable',
      name: 'responsible_technician',
      desc: '',
      args: [],
    );
  }

  /// `Contrato`
  String get contract {
    return Intl.message(
      'Contrato',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Dirección`
  String get direction {
    return Intl.message(
      'Dirección',
      name: 'direction',
      desc: '',
      args: [],
    );
  }

  /// `Teléfono`
  String get phone {
    return Intl.message(
      'Teléfono',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get mail {
    return Intl.message(
      'Email',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `Nombre de Cliente`
  String get customer_name {
    return Intl.message(
      'Nombre de Cliente',
      name: 'customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Nombre del Administrador`
  String get admin_name {
    return Intl.message(
      'Nombre del Administrador',
      name: 'admin_name',
      desc: '',
      args: [],
    );
  }

  /// `CIF`
  String get cif {
    return Intl.message(
      'CIF',
      name: 'cif',
      desc: '',
      args: [],
    );
  }

  /// `Tipo de Cliente`
  String get customer_type {
    return Intl.message(
      'Tipo de Cliente',
      name: 'customer_type',
      desc: '',
      args: [],
    );
  }

  /// `Forma de Pago`
  String get method_payment {
    return Intl.message(
      'Forma de Pago',
      name: 'method_payment',
      desc: '',
      args: [],
    );
  }

  /// `Fecha`
  String get date {
    return Intl.message(
      'Fecha',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Tipo`
  String get type {
    return Intl.message(
      'Tipo',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Descripción`
  String get description {
    return Intl.message(
      'Descripción',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Ver equipos`
  String get see_equipment {
    return Intl.message(
      'Ver equipos',
      name: 'see_equipment',
      desc: '',
      args: [],
    );
  }

  /// `Ir al trabajo`
  String get go_to_work {
    return Intl.message(
      'Ir al trabajo',
      name: 'go_to_work',
      desc: '',
      args: [],
    );
  }

  /// `Volver`
  String get back {
    return Intl.message(
      'Volver',
      name: 'back',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
