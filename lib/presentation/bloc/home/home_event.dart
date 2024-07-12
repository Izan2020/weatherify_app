import 'package:weatherify_app/presentation/bloc/home/home_state.dart';

class HomeEvent {
  const HomeEvent();
}

class OnSwitchHomeEvent extends HomeEvent {
  HomeState homeState;
  OnSwitchHomeEvent(this.homeState);
}
