
import '../di/injector.dart';

final $urls = $sl.get<Urls>(instanceName: 'baseUrl');

class Urls {

  const Urls(this.url);
  
  // Add uat server http
  factory Urls.uat() => const Urls('https://uatexample.org.ex.in/api');
  // Add local server http
  factory Urls.local() => const Urls('http://121.121.0.121:12/api');
 
  final String url;

  bool get isUAT => true;
  
  static final baseUrl = $urls.url;
  static final cusWs = '$baseUrl/method'; 
  static final jsonWS = '$baseUrl/resource'; 

  // Authentication
  static String get login => '$cusWs/login';
  
  // This like you have to use Doctype data to fetch list of data to show... 
  // static String get visits => '$jsonWS/${Doctype.visits}';
  // static String get company => '$jsonWS/${Doctype.company}';
  // static String get oem => '$jsonWS/${Doctype.oem}';
}