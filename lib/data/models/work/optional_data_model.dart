import '../../../domain/entities/work/optional_data.dart';

class OptionalDataModel extends OptionalData {
  String? stateClass;
  String? ordenP;

  OptionalDataModel({
    this.stateClass,
    this.ordenP,
  });

  factory OptionalDataModel.fromJson(Map<String, dynamic> json) =>
      OptionalDataModel(
        stateClass: json['ClaseEstado'],
        ordenP: json['ORDENP'],
      );

  Map<String, dynamic> toJson() => {
        'ClaseEstado': stateClass,
        'ORDENP': ordenP,
      };
}
