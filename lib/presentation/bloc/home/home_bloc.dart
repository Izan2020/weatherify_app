import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/home_event.dart';
import 'package:weatherify_app/presentation/bloc/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(OnDefault()) {
    on<OnSwitchHomeEvent>(
      (event, emit) => emit(event.homeState),
    );
  }
}