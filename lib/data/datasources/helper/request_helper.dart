import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:weatherify_app/data/datasources/helper/utils/ssl_certification.dart';

class RequestHelper extends IOClient {
  @override
  Future<http.Response> get(
    Uri url, {
    Map<String, String>? headers,
    String? certifications,
  }) async {
    return await SSLCertifiedClient.initializeIOClient(certifications)
        .then((value) => value.get(url));
  }
}
