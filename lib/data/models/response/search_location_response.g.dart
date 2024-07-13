// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchLocationResponse _$SearchLocationResponseFromJson(
        Map<String, dynamic> json) =>
    SearchLocationResponse(
      (json['items'] as List<dynamic>)
          .map((e) => ItemLocationSLR.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchLocationResponseToJson(
        SearchLocationResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

ItemLocationSLR _$ItemLocationSLRFromJson(Map<String, dynamic> json) =>
    ItemLocationSLR(
      json['title'] as String,
      PositionsSLR.fromJson(json['positions'] as Map<String, dynamic>),
      json['id'] as String,
      json['politicalView'] as String,
    );

Map<String, dynamic> _$ItemLocationSLRToJson(ItemLocationSLR instance) =>
    <String, dynamic>{
      'title': instance.title,
      'positions': instance.positions,
      'id': instance.id,
      'politicalView': instance.politicalView,
    };

PositionsSLR _$PositionsSLRFromJson(Map<String, dynamic> json) => PositionsSLR(
      (json['lat'] as num).toInt(),
      (json['lng'] as num).toInt(),
    );

Map<String, dynamic> _$PositionsSLRToJson(PositionsSLR instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
