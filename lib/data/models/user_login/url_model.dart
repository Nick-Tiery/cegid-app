import '../../../domain/entities/user_login/url.dart';

class UrlModel extends Url {
  String? url;

  UrlModel({
    this.url,
  });

  factory UrlModel.fromJson(Map<String, dynamic> json) => UrlModel(
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'url': url,
      };
}
