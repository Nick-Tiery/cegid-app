class Operation {
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

  Operation({
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
}
