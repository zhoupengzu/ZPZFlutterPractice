import 'package:flutter/material.dart';
import 'hello_world.dart';
import 'LayoutImagesH.dart';
import 'LayoutImagesV.dart';
import 'ExpandedImages.dart';
import 'pack_widget.dart';
import 'container.dart';
import 'grid.dart';

void main() => runApp(new MyApp());
//void main() => runApp(new MyAppWithoutMaterial());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return HelloWorld.helloWorld();
//  return LayoutImagesH.layoutImagesH();
//  return LayoutImagesV.layoutImagesVSpaceBetween();
//    return ExpandedImages.expandImagesWithMaterial();
//  return PackingWidget.normalStars();
//  return ContainerPractice.containerPractice();
  return GridPractice.gridPractice();
  }
}

class MyAppWithoutMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HelloWorld.hellWorldWithoutMaterial();
  }
}
