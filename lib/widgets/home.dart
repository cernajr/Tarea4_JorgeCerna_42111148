import 'package:flutter/material.dart';
import 'package:widgets_avanzados/widgets/paginas.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menu Principal"),
              ),
              ListTile(
                title: const Text("Inicio"),
                leading: const Icon(Icons.home),
                onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
              ),
              ListTile(
                title: const Text("Acerca de"),
                leading: const Icon(Icons.info), 
                onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AcercaDe(),
                  ),
                );
              },
              ),
              ListTile(
                title: const Text("Configuracion"), 
                leading: const Icon(Icons.settings),
                onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Configuracion(),
                  ),
                );
              },
              ),
            ],
          )
        ),
        appBar: AppBar(
          title: const Text("Menu Drawer"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
          ]),
        ),
        body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Toque'),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.green,
                child: const Center(
                  child: Text("Toque", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                )
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Doble toque'),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.red,
                child: const Center(
                  child: Text("Doble Toque", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                )
              ),
            ),
            GestureDetector(
              onLongPress: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Mantener presionado'),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.blue,
                child: const Center(
                  child: Text("Mantener presionado", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                )
              ),
              
            ),
            /*const TabBarView(
              children: [
                Icon(Icons.directions_car),
              Text("Aqui puedo poner el contenido")
              ]),*/
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            final snackBar=SnackBar(
              content: const Text('Hola! Soy una SnackBar!'),
              action: SnackBarAction(
                label: 'Undo', 
                onPressed: (){

                }
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}