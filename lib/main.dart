import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffFC8624),
      systemNavigationBarColor: Color(0xffFC8624) // status bar color
      ));
  runApp(MyApp());
}
