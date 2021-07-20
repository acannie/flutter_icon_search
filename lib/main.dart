import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view.dart';
import 'controller.dart';

void main() {
  runApp(MyApp());
}

// ルートの Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Icon Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        child: FlutterIconSearchView(),
        providers: [
          ChangeNotifierProvider(
            create: (context) => FlutterIconSearchController(),
          ),
        ],
      ),
    );
  }
}
