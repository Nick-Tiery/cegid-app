import '../../../domain/entities/work_detail/id_work.dart';

class IdWorkModel extends IdWork {
  String? idWork;

  IdWorkModel({
    this.idWork,
  });

  factory IdWorkModel.fromJson(Map<String, dynamic> json) => IdWorkModel(
        idWork: json['id_trabajo'],
      );

  Map<String, dynamic> toJson() => {
        'id_trabajo': idWork,
      };
}
