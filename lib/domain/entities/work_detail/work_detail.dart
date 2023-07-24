class WorkDetail {
  Map<String, dynamic>? work;
  Map<String, dynamic>? service;
  Map<String, dynamic>? customer;
  Map<String, dynamic>? admin;
  List<dynamic>? listPeriodicity;
  List<dynamic>? listSummaryEquipment;
  List<dynamic>? listDependents;
  List<dynamic>? listMaterialsUsed;
  List<dynamic>? listEquipment;
  List<dynamic>? listRules;
  List<dynamic>? optionalData;

  WorkDetail({
    this.work,
    this.service,
    this.customer,
    this.admin,
    this.listPeriodicity,
    this.listSummaryEquipment,
    this.listDependents,
    this.listMaterialsUsed,
    this.listEquipment,
    this.listRules,
    this.optionalData,
  });
}
