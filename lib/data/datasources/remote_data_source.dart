import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weatherify_app/data/datasources/helper/request_helper.dart';
import 'package:weatherify_app/data/models/certifications.dart';
import 'package:weatherify_app/data/models/failure.dart';
import 'package:weatherify_app/data/models/response/search_location_response.dart';

class RemoteDataSource {
  final RequestHelper requestHelper;
  final DotEnv dotEnv;
  RemoteDataSource({
    required this.requestHelper,
    required this.dotEnv,
  });

  // Base URL
  final locationUrl = dotenv.env['LOCATION_BASE_URL'];
  final locationApiKey = dotenv.env['LOCATION_API_KEY'];

  Future<SearchLocationResponse> searchLocations(String query) async {
    Uri url = Uri.parse('$locationUrl/browse?q=$query&apiKey=$locationApiKey');
    final response = await requestHelper.get(
      url,
      certifications: Certifications.locationApi,
    );
    print('Url : $url\nApiKey : $locationApiKey');
    if (response.statusCode != 200) {
      throw ServerFailure(
        message: response.reasonPhrase,
        statusCode: response.statusCode,
      );
    }
    final responseBody = jsonDecode(response.body);
    return SearchLocationResponse.fromJson(responseBody);
  }
}
