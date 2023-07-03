import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  int? id;
  String? name;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  double? popularity;
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;

  Result({
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.popularity,
    this.firstAirDate,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
