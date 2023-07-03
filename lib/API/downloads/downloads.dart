import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'downloads.g.dart';

@JsonSerializable()
class Downloads {
  List<Result>? results;

  Downloads({this.results});

  factory Downloads.fromJson(Map<String, dynamic> json) {
    return _$DownloadsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsToJson(this);
}
