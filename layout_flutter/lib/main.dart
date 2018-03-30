import 'package:flutter/material.dart';
import 'hello_world.dart';

//void main() => runApp(new MyApp());
void main() => runApp(new MyAppWithoutMaterial());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HelloWorld.helloWorld();
  }
}

class MyAppWithoutMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HelloWorld.hellWorldWithoutMaterial();
  }
}
