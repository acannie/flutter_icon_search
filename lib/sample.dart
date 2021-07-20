import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

// Sample
class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FlutterIconSearchController _fisController =
        Provider.of<FlutterIconSearchController>(context);

    return const Text("sample");
  }
}
