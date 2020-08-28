import 'package:flutter/material.dart';
import 'paginas/introduccion/introduccion_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/introduccion_1': (context) =>
            Introduccion_1(ModalRoute.of(context).settings.arguments),
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
                ListTile(
                  title: Text('1 - ¿Qué es PHP?'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1',
                        arguments: '1 - ¿Qué es PHP?');
                  },
                ),
                ListTile(
                  title: Text('2 - Instalación del entorno XAMPP'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1',
                    arguments: '2 - Instalación del entorno XAMPP');
                  },
                ),
                ListTile(
                  title: Text('3 - Programa "Hola Mundo" en PHP'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1');
                  },
                ),
                ListTile(
                  title: Text('4 - Un programita más útil que "Hola Mundo'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1');
                  },
                ),
                ListTile(
                  title: Text('5 - Tipos de variables'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1');
                  },
                ),
                ListTile(
                  title: Text('6 - Variables de tipo string'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1');
                  },
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
                    leading: Icon(Icons.insert_drive_file),
                    title: Text('Etiquetas de Cierree'),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
