import '../../../domain/entities/http/response_http_single.dart';

class ResponseHttpSingleModel extends ResponseHttpSingle {
  bool? state;
  Map<String, dynamic>? data;
  List<dynamic>? errors;

  ResponseHttpSingleModel({
    this.state,
    this.data,
    this.errors,
  });

  factory ResponseHttpSingleModel.fromJson(Map<String, dynamic> json) =>
      ResponseHttpSingleModel(
        state: json['estado'],
        data: json['datos'],
        errors: json['errores'],
      );

  Map<String, dynamic> toJson() => {
        'estado': state,
        'datos': data,
        'errores': errors,
      };
}
