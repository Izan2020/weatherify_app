import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weatherify_app/data/datasources/helper/request_helper.dart';
import 'package:weatherify_app/data/datasources/local_data_source.dart';
import 'package:weatherify_app/data/datasources/remote_data_source.dart';
import 'package:weatherify_app/data/repository_implementation.dart';
import 'package:weatherify_app/domain/repository.dart';
import 'package:weatherify_app/domain/usecases/get_search_locations.dart';
import 'package:weatherify_app/presentation/bloc/home/home_bloc.dart';
import 'package:weatherify_app/presentation/bloc/home/search_location/search_location_bloc.dart';

final inject = GetIt.instance;

Future<void> initializeDependencies() async {
  // Repository: Others
  inject.registerFactory(() => RequestHelper());
  inject.registerFactory(() => DotEnv());

  // Remote Datasource: Register Factory
  inject.registerFactory(() => RemoteDataSource(
        requestHelper: inject(),
        dotEnv: inject(),
      ));
  inject.registerFactory(() => LocalDataSource());

  // Repository: Register Factory
  inject.registerFactory<Repository>(() => RepositoryImplementation(
        remoteDataSource: inject(),
        localDataSource: inject(),
      ));

  // Usecases: Lazy Singleton
  inject.registerLazySingleton(() => GetSearchLocations(inject()));

  // Blocs : Register Factory
  inject.registerFactory(() => HomeBloc());
  inject.registerFactory(
    () => SearchLocationBloc(
      getSearchLocations: inject(),
    ),
  );
}
