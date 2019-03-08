import 'package:fluro/fluro.dart';

import './route_handler.dart';

class Routes {
  static const root = '/';
  static configureRoutes(Router router) {
    router.define(root,handler: rootHandler);
  }
}