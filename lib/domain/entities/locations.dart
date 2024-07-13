// ignore_for_file: public_member_api_docs, sort_constructors_first
class Locations {
  List<Location> listOfLocation;
  Locations(this.listOfLocation);
}

class Location {
  String title;
  int longitude;
  int latitude;
  Location(
    this.title,
    this.longitude,
    this.latitude,
  );
}
