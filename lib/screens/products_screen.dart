import 'package:diapsa_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Opción seleccionada',
      home: _pageContent(),
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey),
    );
  }
}

class _pageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Opción seleccionada'),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Mensaje uno',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Mensaje inferior')));
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          //mover a ruta para añadir más
        },
        label: Text('Agregar'),
        icon: Icon(Icons.add),
        backgroundColor: Color(0xff0095eb),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
              color: Color(0xff000000),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(90),
                onTap: () {
                  //Mover a ruta
                },
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text('Lista',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.blue)),
                    )),
              )),
        ],
      ),
    );
  }
}
