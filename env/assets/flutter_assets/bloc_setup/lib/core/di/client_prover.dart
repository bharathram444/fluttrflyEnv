import 'package:http/http.dart' as http;

// Conditional imports for platform-specific implementation
import 'http_client_stub.dart'
    if (dart.library.io) 'http_client_io.dart'
    if (dart.library.html) 'http_client_web.dart';

class HttpClientProvider {
  HttpClientProvider._();

  static final HttpClientProvider _instance = HttpClientProvider._();

  static HttpClientProvider get instance => _instance;

  final http.Client client = createHttpClient();
}
