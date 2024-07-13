import 'package:geolocator/geolocator.dart';

class PositionLocator {
  Future<String> getCurrentLocation() async {
    final geoLocator = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return '${geoLocator.latitude},${geoLocator.longitude}';
  }
}
