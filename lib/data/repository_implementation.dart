import 'package:dartz/dartz.dart';
import 'package:weatherify_app/data/datasources/local_data_source.dart';
import 'package:weatherify_app/data/datasources/remote_data_source.dart';
import 'package:weatherify_app/data/models/failure.dart';
import 'package:weatherify_app/domain/entities/locations.dart';
import 'package:weatherify_app/domain/repository.dart';

class RepositoryImplementation implements Repository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  RepositoryImplementation({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, Locations>> fetchSearchLocations(String query) async {
    try {
      final response = await remoteDataSource.searchLocations(query);
      return Right(response.toEntity());
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
