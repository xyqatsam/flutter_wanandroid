import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../ui/screens/index.dart'; // all screen file export whit this index.dart


var rootHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
  return RootScreen();
});