import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'sample.dart';

// ページ全体のレイアウトを生成
class FlutterIconSearchView extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget appBarMain() {
    return AppBar(
      title: const Text('Flutter Icon Search'),
      backgroundColor: Colors.blue[200],
      centerTitle: true,
      actions: <Widget>[
        InkWell(
          onTap: () => _launchURL("https://acannie.github.io/acannie"),
          child: const Icon(Icons.face),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: appBarMain(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[Sample()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
