import '../../../domain/entities/http/response_http_array.dart';

class ResponseHttpArrayModel extends ResponseHttpArray {
  bool? state;
  List<dynamic>? listData;
  List<dynamic>? errors;

  ResponseHttpArrayModel({
    this.state,
    this.listData,
    this.errors,
  });

  factory ResponseHttpArrayModel.fromJson(Map<String, dynamic> json) =>
      ResponseHttpArrayModel(
        state: json['estado'],
        listData: json['datos'],
        errors: json['errores'],
      );

  Map<String, dynamic> toJson() => {
        'estado': state,
        'datos': listData,
        'errores': errors,
      };
}
