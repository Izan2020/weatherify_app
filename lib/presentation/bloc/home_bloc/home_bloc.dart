import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home_bloc/home_event.dart';
import 'package:weatherify_app/presentation/bloc/home_bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState());
}
