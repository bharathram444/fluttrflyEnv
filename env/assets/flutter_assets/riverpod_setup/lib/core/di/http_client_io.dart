import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

http.Client createHttpClient() {
  final HttpClient client = HttpClient();
  if (kDebugMode) {
    client.badCertificateCallback = (_, __, ___) => true;
  }
  return IOClient(client);
}
