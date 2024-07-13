// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearestLocations {
  List<NearestLocation> listOfLocation;
  NearestLocations(this.listOfLocation);
}

class NearestLocation {
  String title;
  int longitude;
  int latitude;
  NearestLocation(
    this.title,
    this.longitude,
    this.latitude,
  );
}
