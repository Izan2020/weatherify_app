import 'package:get_it/get_it.dart';
import 'package:weatherify_app/presentation/bloc/home/home_bloc.dart';

final inject = GetIt.asNewInstance();

Future<void> initializeDependencies() async {
  // Blocs : Register Factory
  inject.registerFactory(() => HomeBloc());
}
