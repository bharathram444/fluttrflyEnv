String defaultErrorParser(Map<String, dynamic> response, String defErrorMessage) {
  try {
    if(response.containsKey('exception')) {
      final errorMsg = response['message'];
      final exception = response['exception'];
      return errorMsg ?? exception;
    } else {
      return defErrorMessage;
    }
  } on Exception catch (_) {
    throw const FormatException('Unrecognized json error response');
  }
}