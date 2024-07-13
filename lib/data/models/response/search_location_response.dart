import 'package:json_annotation/json_annotation.dart';
import 'package:weatherify_app/domain/entities/nearest_locations.dart';

part 'search_location_response.g.dart';

@JsonSerializable()
class SearchLocationResponse {
  final List<ItemLocationSLR> items;
  SearchLocationResponse(this.items);

  factory SearchLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationResponseFromJson(json);

  NearestLocations toEntity() {
    final itemz = items.map((item) => item.toEntity()).toList();
    return NearestLocations(itemz);
  }
}

@JsonSerializable()
class ItemLocationSLR {
  final String title;
  final PositionsSLR position;
  final String id;
  final String language;
  ItemLocationSLR(
    this.title,
    this.position,
    this.id,
    this.language,
  );

  factory ItemLocationSLR.fromJson(Map<String, dynamic> json) =>
      _$ItemLocationSLRFromJson(json);

  NearestLocation toEntity() {
    return NearestLocation(
      title,
      position.lng,
      position.lat,
    );
  }
}

@JsonSerializable()
class PositionsSLR {
  final int lat;
  final int lng;
  PositionsSLR(this.lat, this.lng);

  factory PositionsSLR.fromJson(Map<String, dynamic> json) =>
      _$PositionsSLRFromJson(json);
}
