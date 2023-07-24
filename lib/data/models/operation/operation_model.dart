import '../../../domain/entities/operation/operation.dart';

class OperationModel extends Operation {
  int? equipmentCode;
  int? operationCode;
  String? description;
  String? value;
  double? cost;
  int? vat;
  String? sigridCode;
  String? notEditable;
  String? quickOperation;
  String? involvesWorkshopWithdrawal;
  String? involvesWorkshop;
  String? changesRetestingDate;
  int? operationCategoryCode;
  String? retestingDateField;

  OperationModel({
    this.equipmentCode,
    this.operationCode,
    this.description,
    this.value,
    this.cost,
    this.vat,
    this.sigridCode,
    this.notEditable,
    this.quickOperation,
    this.involvesWorkshopWithdrawal,
    this.involvesWorkshop,
    this.changesRetestingDate,
    this.operationCategoryCode,
    this.retestingDateField,
  });

  factory OperationModel.fromJson(Map<String, dynamic> json) => OperationModel(
        equipmentCode: json['equipmentCode'],
        operationCode: json['operationCode'],
        description: json['description'],
        value: json['value'],
        cost: json['cost']?.toDouble(),
        vat: json['vat'],
        sigridCode: json['sigridCode'],
        notEditable: json['notEditable'],
        quickOperation: json['quickOperation'],
        involvesWorkshopWithdrawal: json['involvesWorkshopWithdrawal'],
        involvesWorkshop: json['involvesWorkshop'],
        changesRetestingDate: json['changesRetestingDate'],
        operationCategoryCode: json['operationCategoryCode'],
        retestingDateField: json['retestingDateField'],
      );

  Map<String, dynamic> toJson() => {
        'equipmentCode': equipmentCode,
        'operationCode': operationCode,
        'description': description,
        'value': value,
        'cost': cost,
        'vat': vat,
        'sigridCode': sigridCode,
        'notEditable': notEditable,
        'quickOperation': quickOperation,
        'involvesWorkshopWithdrawal': involvesWorkshopWithdrawal,
        'involvesWorkshop': involvesWorkshop,
        'changesRetestingDate': changesRetestingDate,
        'operationCategoryCode': operationCategoryCode,
        'retestingDateField': retestingDateField,
      };
}
