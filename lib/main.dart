import 'package:flutter/material.dart';

void main() => runApp(JALGapp());

class JALGapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EsScaffold(title: "Flutter Juan Lopez"),
    ); //Fin de MaterialApp
  } //fin widget build
} //Fin JALGapp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} //fin EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/FlutterEnEspanol.jpg', width: 200.0, height: 200.0), // fin child image
      ), // fin body
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 1 Juan'),
        ]), //Fin de columna
      ), //Fin drawer 1
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 2 Juan'),
        ]), //Fin de columna
      ), //Fin endDrawer 2
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 100.0),
                    Text('Bottom sheet Juan'),
                  ],
                ),
              ); //Fin Container
            }, //Fin builder
          ); //Fin Sheet
        }, //Fin de onPressed
      ), //Fin floatingActionButton
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('bottomNavigationBar con BottomAppBar Juan')
            ], // Fin <Widget>
          ), //Fin Row
        ), //Fin Container
      ), //Fin bottom aPPBar
    ); //fin de scaffold
  } //fin de widget build
} //fin state<EsScaffold>
