import 'package:flutter/material.dart';

import '../utils/icono_string_util.dart';
import '../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (ctx, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listItems(ctx, snapshot.data));
      },
    );
  }

  _listItems(ctx, List<dynamic> data) {
    final List<Widget> list = [];

    data.forEach((opt) {
      final widget = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // final route = MaterialPageRoute(builder: (_) => AlertPage());
          // Navigator.push(ctx, route);
          Navigator.pushNamed(ctx, opt['ruta']);
        },
      );

      list..add(widget)..add(Divider());
    });

    return list;
  }
}
