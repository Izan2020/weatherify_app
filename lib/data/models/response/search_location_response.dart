import 'package:json_annotation/json_annotation.dart';
import 'package:weatherify_app/domain/entities/locations.dart';

part 'search_location_response.g.dart';

@JsonSerializable()
class SearchLocationResponse {
  final List<ItemLocationSLR> items;
  SearchLocationResponse(this.items);

  factory SearchLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationResponseFromJson(json);

  Locations toEntity() {
    final itemz = items.map((item) => item.toEntity()).toList();
    return Locations(itemz);
  }
}

@JsonSerializable()
class ItemLocationSLR {
  final String title;
  final PositionsSLR positions;
  final String id;
  final String politicalView;
  ItemLocationSLR(
    this.title,
    this.positions,
    this.id,
    this.politicalView,
  );

  factory ItemLocationSLR.fromJson(Map<String, dynamic> json) =>
      _$ItemLocationSLRFromJson(json);

  Location toEntity() {
    return Location(
      title,
      positions.lng,
      positions.lat,
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
