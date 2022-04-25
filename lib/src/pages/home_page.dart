import 'package:flutter/material.dart';
import 'package:preferencias_user_app/src/shared_prefs/preferencias_usuario.dart';
import 'package:preferencias_user_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  static const String routeName = 'home';
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimapag = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias'),
        backgroundColor: (prefs.colorSec) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Color secundario: ${prefs.colorSec}'),
        const Divider(),
        Text('Género: ${prefs.genero}'),
        const Divider(),
        Text('Nombre usuario: ${prefs.nombreUsuario}'),
        const Divider(),
      ]),
    );
  }
}