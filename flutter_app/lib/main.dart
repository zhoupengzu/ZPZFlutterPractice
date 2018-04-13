import 'package:flutter/material.dart';

import 'container_practice.dart';
import 'row_practice.dart';
import 'text.dart';
import 'raise_button.dart';
import 'app_bar.dart';
import 'flutter_logo.dart';
import 'bottom_navigation_bar.dart';
import 'tab_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TabBarPractice.tabBar();
  }
}
