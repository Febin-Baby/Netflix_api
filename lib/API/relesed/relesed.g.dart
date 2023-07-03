// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relesed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relesed _$RelesedFromJson(Map<String, dynamic> json) => Relesed(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RelesedToJson(Relesed instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
