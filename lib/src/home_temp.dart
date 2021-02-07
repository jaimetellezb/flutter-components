import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(
        children: _createItemsShort(),
      ),
    );
  }

  // Opción 1 para devolver una lista de widgets
  List<Widget> _createItems() {
    // opción 1
    List<Widget> list = new List<Widget>();
    for (String item in options) {
      final tempWidget = ListTile(
        title: Text(item),
      );

      // operador de cascada
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }

  // Opción 1 para devolver una lista de widgets (recomendada)
  List<Widget> _createItemsShort() {
    return options.map((String element) {
      return Column(
        children: [
          ListTile(
            title: Text(element + '!'),
            subtitle: Text('CUalquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
