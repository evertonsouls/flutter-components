import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      // body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    final List<Widget> lista = [];

    for (String opt in opciones) {
      final temp = ListTile(
        title: Text(opt),
      );
      lista..add(temp)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map((opt) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(opt),
                  subtitle: Text("Cualquier cosa"),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
