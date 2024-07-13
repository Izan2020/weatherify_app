import 'package:dartz/dartz.dart';
import 'package:weatherify_app/data/models/failure.dart';
import 'package:weatherify_app/domain/entities/nearest_locations.dart';
import 'package:weatherify_app/domain/repository.dart';

class GetSearchLocations {
  Repository repository;
  GetSearchLocations(this.repository);

  Future<Either<Failure, NearestLocations>> execute(String query) =>
      repository.fetchSearchLocations(query);
}