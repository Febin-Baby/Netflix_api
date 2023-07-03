import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'top_rated.g.dart';

@JsonSerializable()
class TopRated {
  Dates? dates;
  int? page;
  List<Result>? results;

  TopRated({this.dates, this.page, this.results});

  factory TopRated.fromJson(Map<String, dynamic> json) {
    return _$TopRatedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopRatedToJson(this);
}
