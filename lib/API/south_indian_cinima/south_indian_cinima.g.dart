// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'south_indian_cinima.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SouthIndianCinima _$SouthIndianCinimaFromJson(Map<String, dynamic> json) =>
    SouthIndianCinima(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SouthIndianCinimaToJson(SouthIndianCinima instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
