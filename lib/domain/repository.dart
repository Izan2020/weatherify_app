import 'package:dartz/dartz.dart';
import 'package:weatherify_app/data/models/failure.dart';

import 'package:weatherify_app/domain/entities/nearest_locations.dart';

abstract class Repository {
  Future<Either<Failure, NearestLocations>> fetchSearchLocations(String query);
}
