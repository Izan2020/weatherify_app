import 'package:dartz/dartz.dart';
import 'package:weatherify_app/data/models/failure.dart';

import 'package:weatherify_app/domain/entities/locations.dart';

abstract class Repository {
  Future<Either<Failure, Locations>> fetchSearchLocations(String query);
}
