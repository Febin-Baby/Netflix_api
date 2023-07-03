import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'relesed.g.dart';

@JsonSerializable()
class Relesed {
  int? page;
  List<Result>? results;

  Relesed({this.page, this.results});

  factory Relesed.fromJson(Map<String, dynamic> json) {
    return _$RelesedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RelesedToJson(this);
}
