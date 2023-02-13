import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ogrenciler.add('init');
  }

  var sinif = 5;
  var baslik = "Ögrenciler";
  var ogrenciler = ['Ali', 'Ayse', 'Can'];

  @override
  Widget build(BuildContext context) {
    ogrenciler.add('buildden');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$sinif. Sınıf',
              textScaleFactor: 2,
            ),
            Text(
              baslik,
              textScaleFactor: 1.5,
            ),
            for (final o in ogrenciler)
              Text(
                  o
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ogrenciler.add('yeni');
                });
              },
              child: Text(
                'Ekle'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
