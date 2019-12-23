import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _estiloTexto = TextStyle(fontSize: 25);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
        elevation: 10.0,
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de tabs',
              style: _estiloTexto,
            ),
            Text(
              '$_contador',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() => {
                _contador++,
              }),
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
