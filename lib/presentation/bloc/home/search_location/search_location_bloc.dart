import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherify_app/data/datasources/helper/utils/debouncer.dart';
import 'package:weatherify_app/domain/usecases/get_search_locations.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_event.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_state.dart';

class SearchLocationBloc
    extends Bloc<SearchLocationEvent, SearchLocationState> {
  final GetSearchLocations getSearchLocations;
  SearchLocationBloc({
    required this.getSearchLocations,
  }) : super(LoadingSLS()) {
    // Get Location Data
    on<OnGetLocations>((event, emit) async {
      final result = await getSearchLocations.execute(event.searchQuery);
      result.fold(
        (failure) => emit(ErrorSLS('${failure.message}')),
        (data) => emit(SuccessSLS(data)),
      );
    }, transformer: debounce(const Duration(milliseconds: 500)));
    on<OnClearState>((event, emit) => emit(LoadingSLS()));
  }
}
