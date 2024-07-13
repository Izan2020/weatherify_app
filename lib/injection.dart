import 'package:get_it/get_it.dart';
import 'package:weatherify_app/data/datasources/remote_data_source.dart';
import 'package:weatherify_app/data/repository_implementation.dart';
import 'package:weatherify_app/domain/usecases/get_search_locations.dart';
import 'package:weatherify_app/presentation/bloc/home/home_bloc.dart';

final inject = GetIt.asNewInstance();

Future<void> initializeDependencies() async {
  // Blocs : Register Factory
  inject.registerFactory(() => HomeBloc());

  // Remote Datasource: Register Factory
  inject.registerFactory(() => RemoteDataSource(
        requestHelper: inject(),
        dotEnv: inject(),
      ));

  // Repository: Register Factory
  inject.registerFactory(() => RepositoryImplementation(
        remoteDataSource: inject(),
        localDataSource: inject(),
      ));

  // Usecases: Singleton
  inject.registerSingleton(() => GetSearchLocations(inject()));
}
