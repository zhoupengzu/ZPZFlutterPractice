import 'package:flutter/material.dart';

import 'container_practice.dart';
import 'row_practice.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RowWidget.rowWidget();
  }
}
