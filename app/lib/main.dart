import 'package:flutter/material.dart';
import 'package:app/camera_preview_scanner.dart';
import 'package:app/material_barcode_scanner.dart';
import 'package:app/picture_scanner.dart';

void main() {
  runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => _ExampleList(),
        '/$PictureScanner': (BuildContext context) => const PictureScanner(),
        '/$CameraPreviewScanner': (BuildContext context) =>
            const CameraPreviewScanner(),
        '/$MaterialBarcodeScanner': (BuildContext context) =>
            const MaterialBarcodeScanner(),
      },
    ),
  );
}

class _ExampleList extends StatefulWidget {
  const _ExampleList({Key? key}) : super(key: key);

  @override
  __ExampleListState createState() => __ExampleListState();
}

class __ExampleListState extends State<_ExampleList> {
  static final List<String> _exampleWidgetNames = <String>[
    '$PictureScanner',
    '$CameraPreviewScanner',
    '$MaterialBarcodeScanner',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example List'),
      ),
      body: ListView.builder(
          itemCount: _exampleWidgetNames.length,
          itemBuilder: (BuildContext context, int index) {
            final String widgetName = _exampleWidgetNames[index];
            return Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: ListTile(
                title: Text(widgetName),
                onTap: () => Navigator.pushNamed(context, '/$widgetName'),
              ),
            );
          }),
    );
  }
}
