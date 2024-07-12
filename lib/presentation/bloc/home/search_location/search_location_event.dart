class SearchLocationEvent {
  const SearchLocationEvent();
}

class OnGetLocations extends SearchLocationEvent {
  final String searchQuery;
  const OnGetLocations(this.searchQuery);
}
