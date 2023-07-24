import '../../../domain/entities/field/option.dart';

class OptionModel extends Option {
  String? text;
  int? selectionCode;
  String? anomalousValue;
  String? order;

  OptionModel({
    this.text,
    this.selectionCode,
    this.anomalousValue,
    this.order,
  });

  factory OptionModel.fromJson(Map<String, dynamic> json) => OptionModel(
        text: json['text'],
        selectionCode: json['selectionCode'],
        anomalousValue: json['anomalousValue'],
        order: json['order'],
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'selectionCode': selectionCode,
        'anomalousValue': anomalousValue,
        'order': order,
      };
}
