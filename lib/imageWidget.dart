import 'package:flutter/material.dart';

void main() => runApp(ImageWidgetApp());

class ImageWidgetApp extends StatefulWidget {
  const ImageWidgetApp({Key? key}) : super(key: key);

  @override
  _ImageWidgetAppState createState() => _ImageWidgetAppState();
}

class _ImageWidgetAppState extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Bar'),
        centerTitle: true,
      ),
    );
  }
}
