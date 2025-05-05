import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});


  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController contraController = TextEditingController();
  String inputText = '';
  String usuario= 'periclescata';
  String contra= 'dap1234';
  String mensaje = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(mensaje),
        Text(inputText),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextField(
            controller: usuarioController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Usuario',
            ),
          ),
        ),
        Text(inputText),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextField(
            controller:  contraController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Contraseña',
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                 usuario = usuarioController.text;
                 contra = contraController.text;
                 if(usuario=='periclescata'&& contra=='dap1234'){
                      mensaje = 'Usuario y contraseña correctos';
                 }
                 else if(usuario.isEmpty || contra.isEmpty){
                      mensaje = 'Usuario y/o contraseña vacios';
                 }
                 else {
                      mensaje = 'Usuario y/o contraseña incorrecto/s';
                    }
              });
            },
            child: const Text('Enviar'))
      ]),
    ));
  }
}
