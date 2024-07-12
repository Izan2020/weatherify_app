import 'package:weatherify_app/data/datasources/helper/request_helper.dart';
import 'package:weatherify_app/data/models/exception.dart';

class RemoteDataSource {
  final RequestHelper requestHelper;
  RemoteDataSource(this.requestHelper);

  Future<List<String>> searchLocations() async {
    final response = await requestHelper.get(Uri.parse(""));
    if (response.statusCode != 200) {
      throw ServerException(
        response.reasonPhrase,
        response.statusCode,
      );
    }
    return ["", ""];
  }
}
