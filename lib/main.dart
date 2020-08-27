import 'package:flutter/material.dart';
import 'paginas/introduccion/1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/introduccion_1': (context) => Introduccion_1(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Tutorial PHP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            ExpansionTile(
              leading: Icon(Icons.add_box),
              title: Text("Introduccion a PHP"),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Etiquetas de Cierre'),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.add_box),
              title: Text("Estructuras Condicionales PHP"),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Text('Etiquetas de Cierre'),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
