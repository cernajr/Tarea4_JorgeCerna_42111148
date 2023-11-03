import 'package:flutter/material.dart';

class AcercaDe extends StatelessWidget {
  const AcercaDe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acerca de"),
      ),
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(20),
        child: const Center(
          child: Text(
            "Esta aplicacion esta hecha para cumplir con las instrucciones asignadas.", 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        )
      ),
    );
  }
}

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuracion"),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            "Coming soon...", 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        )
      ),
    );
  }
}