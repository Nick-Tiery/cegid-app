class WorkToday {
  Map<String, dynamic>? work;
  Map<String, dynamic>? service;
  List<dynamic>? listDependents;
  List<dynamic>? listMaterialsUsed;
  Map<String, dynamic>? optionalData;

  WorkToday({
    this.work,
    this.service,
    this.listDependents,
    this.listMaterialsUsed,
    this.optionalData,
  });
}
