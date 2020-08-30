import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class Introduccion_4 extends StatelessWidget {
  final String title;
  Introduccion_4(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HtmlWidget(
          kHtml,
        )
      ],
    );
  }
}



const kHtml = '''

''';