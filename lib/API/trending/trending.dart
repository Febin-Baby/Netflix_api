import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'trending.g.dart';

@JsonSerializable()
class Trending {
  Dates? dates;
  int? page;
  List<Result>? results;

  Trending({this.dates, this.page, this.results});

  factory Trending.fromJson(Map<String, dynamic> json) {
    return _$TrendingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingToJson(this);
}
