import '../../../domain/entities/user_login/token.dart';

class TokenModel extends Token {
  String? accessToken;
  String? tokenType;
  Map<String, dynamic>? technician;

  TokenModel({
    this.accessToken,
    this.tokenType,
    this.technician,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        accessToken: json['accessToken'],
        tokenType: json['token_type'],
        technician: json['tecnico'],
      );

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'token_type': tokenType,
        'tecnico': technician,
      };
}
