import '../../../domain/entities/field/field.dart';

class FieldModel extends Field {
  int? equipmentCode;
  String? fieldCode;
  String? label;
  String? input;
  int? length;
  String? content;
  int? order;
  String? automatic;
  int? certificationOrder;
  int? certificationSize;
  String? defaultValue;
  String? editable;
  String? fieldObservations;
  String? susceptibleToCorrectValue;
  String? notVisibleToClient;
  String? conformityField;
  String? incorrectValues;
  String? normativeText;
  String? recommendationField;
  String? label2;
  String? protected;
  List<dynamic>? options;
  String? informative;

  FieldModel({
    this.equipmentCode,
    this.fieldCode,
    this.label,
    this.input,
    this.length,
    this.content,
    this.order,
    this.automatic,
    this.certificationOrder,
    this.certificationSize,
    this.defaultValue,
    this.editable,
    this.fieldObservations,
    this.susceptibleToCorrectValue,
    this.notVisibleToClient,
    this.conformityField,
    this.incorrectValues,
    this.normativeText,
    this.recommendationField,
    this.label2,
    this.protected,
    this.options,
    this.informative,
  });

  factory FieldModel.fromJson(Map<String, dynamic> json) => FieldModel(
        equipmentCode: json['equipmentCode'],
        fieldCode: json['fieldCode'],
        label: json['label'],
        input: json['input'],
        length: json['length'],
        content: json['content'],
        order: json['order'],
        automatic: json['automatic'],
        certificationOrder: json['certificationOrder'],
        certificationSize: json['certificationSize'],
        defaultValue: json['defaultValue'],
        editable: json['editable'],
        fieldObservations: json['fieldObservations'],
        susceptibleToCorrectValue: json['susceptibleToCorrectValue'],
        notVisibleToClient: json['notVisibleToClient'],
        conformityField: json['conformityField'],
        incorrectValues: json['incorrectValues'],
        normativeText: json['normativeText'],
        recommendationField: json['recommendationField'],
        label2: json['label2'],
        protected: json['protected'],
        options: (json['options'] ?? [])
            .map((e) => e as Map<String, dynamic>)
            .toList(),
        informative: json['informative'],
      );

  Map<String, dynamic> toJson() => {
        'equipmentCode': equipmentCode,
        'fieldCode': fieldCode,
        'label': label,
        'input': input,
        'length': length,
        'content': content,
        'order': order,
        'automatic': automatic,
        'certificationOrder': certificationOrder,
        'certificationSize': certificationSize,
        'defaultValue': defaultValue,
        'editable': editable,
        'fieldObservations': fieldObservations,
        'susceptibleToCorrectValue': susceptibleToCorrectValue,
        'notVisibleToClient': notVisibleToClient,
        'conformityField': conformityField,
        'incorrectValues': incorrectValues,
        'normativeText': normativeText,
        'recommendationField': recommendationField,
        'label2': label2,
        'protected': protected,
        'options': options,
        'informative': informative,
      };
}
