import 'package:diapsa_app/screens/products_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grupo Diapsa',
      home: _pageContent(),
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey),
    );
  }
}

class _pageContent extends StatelessWidget {
  const _pageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Grupo Diapsa'),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border(
                        bottom:
                            BorderSide(width: 8.0, color: Color(0xff0095eb)))),
                child: Text(
                  'Alfredo Galvan',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Catalogo'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Configuración'),
            ),
          ],
        ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductList()));
                },
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text('Opción 1',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.blue)),
                    )),
              )),
          Card(
              color: Color(0xff000000),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(90),
                onTap: () {
                  //Mover a ruta
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductList()));
                },
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text('Opción 1',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.blue)),
                    )),
              )),
          Card(
              color: Color(0xff000000),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(90),
                onTap: () {
                  //Mover a ruta
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductList()));
                },
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: Text('Opción 1',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.blue)),
                    )),
              )),
        ],
      ),
    );
  }
}
