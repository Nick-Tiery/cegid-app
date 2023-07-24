import '../../../domain/entities/user_login/login_initial.dart';

class LoginInitialModel extends LoginInitial {
  String? user;
  String? pass;
  String? cif;

  LoginInitialModel({
    this.user,
    this.pass,
    this.cif,
  });

  factory LoginInitialModel.fromJson(Map<String, dynamic> json) =>
      LoginInitialModel(
        user: json['usuario'],
        pass: json['contrasena'],
        cif: json['cif'],
      );

  Map<String, dynamic> toJson() => {
        'usuario': user,
        'contrasena': pass,
        'cif': cif,
      };
}
