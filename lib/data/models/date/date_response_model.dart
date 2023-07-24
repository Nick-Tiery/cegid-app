import '../../../domain/entities/date/date_response.dart';

class DateResponseModel extends DateResponse {
  String? date;

  DateResponseModel({
    this.date,
  });

  factory DateResponseModel.fromJson(Map<String, dynamic> json) =>
      DateResponseModel(
        date: json['fecha_hora'],
      );

  Map<String, dynamic> toJson() => {
        'fecha_hora': date,
      };
}
