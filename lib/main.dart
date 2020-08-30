import 'package:flutter/material.dart';
import 'paginas/introduccion/introduccion_1.dart';
import 'paginas/introduccion/introduccion_2.dart';
import 'paginas/introduccion/introduccion_3.dart';
import 'paginas/introduccion/introduccion_4.dart';
import 'paginas/introduccion/introduccion_5.dart';
import 'paginas/introduccion/introduccion_6.dart';

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
        '/introduccion_2': (context) =>
            Introduccion_2(ModalRoute.of(context).settings.arguments),
        '/introduccion_3': (context) =>
            Introduccion_3(ModalRoute.of(context).settings.arguments),
        '/introduccion_4': (context) =>
            Introduccion_4(ModalRoute.of(context).settings.arguments),
        '/introduccion_5': (context) =>
            Introduccion_5(ModalRoute.of(context).settings.arguments),
        '/introduccion_6': (context) =>
            Introduccion_6(ModalRoute.of(context).settings.arguments),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FirebaseAdMob.instance.initialize(appId: "ca-app-pub-5852042324891789~4137851755");
    // myBanner..load()..show();
    // myInterstitial
    //   ..load()
    //   ..show(
    //     anchorType: AnchorType.bottom,
    //     anchorOffset: 0.0,
    //     horizontalCenterOffset: 0.0,
    //   );
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Tutorial PHP'),
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
                    Navigator.pushNamed(context, '/introduccion_2',
                        arguments: '2 - Instalación del entorno XAMPP');
                  },
                ),
                ListTile(
                  title: Text('3 - Programa "Hola Mundo" en PHP'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_3',
                        arguments: '3 - Programa "Hola Mundo" en PHP');
                  },
                ),
                ListTile(
                  title: Text('4 - Mas que "Hola Mundo'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_4',
                        arguments:
                            '4 - Mas que "Hola Mundo');
                  },
                ),
                ListTile(
                  title: Text('5 - Tipos de variables'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_5',
                        arguments: '5 - Tipos de variables');
                  },
                ),
                ListTile(
                  title: Text('6 - Variables de tipo string'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_6',
                        arguments: '6 - Variables de tipo string');
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.add_box),
              title: Text("Estructuras Condicionales PHP"),
              children: <Widget>[
                ListTile(
                  title: Text('Etiquetas de Cierree'),
                  onTap: () {
                    Navigator.pushNamed(context, '/introduccion_1',
                        arguments: 'Etiquetas de Cierree');
                  },
                ),
              ],
            )
          ],
        ));
  }
}

// MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//   keywords: <String>['flutterio', 'beautiful apps'],
//   contentUrl: 'https://flutter.io',
//   birthday: DateTime.now(),
//   childDirected: false,
//   designedForFamilies: false,
//   gender: MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );
//
// BannerAd myBanner = BannerAd(
//   adUnitId: "ca-app-pub-5852042324891789/3108567465",
//   size: AdSize.smartBanner,
//   targetingInfo: targetingInfo,
//   listener: (MobileAdEvent event) {
//     print("BannerAd event is $event");
//   },
// );
//
// InterstitialAd myInterstitial = InterstitialAd(
//   // Replace the testAdUnitId with an ad unit id from the AdMob dash.
//   // https://developers.google.com/admob/android/test-ads
//   // https://developers.google.com/admob/ios/test-ads
//   adUnitId: 'ca-app-pub-5852042324891789/6750754411',
//   targetingInfo: targetingInfo,
//   listener: (MobileAdEvent event) {
//     print("InterstitialAd event is $event");
//   },
// );
