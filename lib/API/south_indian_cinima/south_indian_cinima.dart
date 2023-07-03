import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'south_indian_cinima.g.dart';

@JsonSerializable()
class SouthIndianCinima {
  int? page;
  List<Result>? results;

  SouthIndianCinima({this.page, this.results});

  factory SouthIndianCinima.fromJson(Map<String, dynamic> json) {
    return _$SouthIndianCinimaFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SouthIndianCinimaToJson(this);
}
