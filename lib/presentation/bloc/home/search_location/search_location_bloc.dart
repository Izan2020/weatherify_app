import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_event.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_state.dart';

class SearchLocationBloc
    extends Bloc<SearchLocationEvent, SearchLocationState> {
  SearchLocationBloc() : super(LoadingSLS()) {
    on<OnGetLocations>((event, emit) {});
  }
}
