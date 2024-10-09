import 'package:fluttrfly/router/route_x.dart';

extension AppRoute on RouteX {
  static RouteX initial = RouteX(pageName: '/', name: 'initial');
  static RouteX logIn = RouteX(pageName: 'logIn');
  static RouteX home = RouteX(pageName: 'home');
  // children of home
  static RouteX knowYourColors = RouteX(pageName: 'knowYourColors', parent: home);
}

