import '../../../domain/entities/date/date_request.dart';

class DateRequestModel extends DateRequest {
  String? type;

  DateRequestModel({
    this.type,
  });

  factory DateRequestModel.fromJson(Map<String, dynamic> json) =>
      DateRequestModel(
        type: json['tipo'],
      );

  Map<String, dynamic> toJson() => {
        'tipo': type,
      };
}
