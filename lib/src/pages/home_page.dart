import 'package:components/src/pages/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // print(menuProvider.options);
    // menuProvider.loadData().then((options) {
    //   print('_lista');
    //   print(options);
    // });

    return FutureBuilder(
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      }, // permite dibujar en la pantalla del dispositivo de acuerdo a future
      future: menuProvider.loadData(), // enlazada al future que queremos
      initialData: [],
    );

    // return ListView(
    //   children: _listItems(),
    // );
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach((opt) {
      final widgeTemp = ListTile(
        title: Text(opt['text']),
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {},
      );
      options.add(widgeTemp);
    });

    return options;
  }
}
