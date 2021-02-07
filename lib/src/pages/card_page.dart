import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(
        //   horizontal: 50.0,
        //   vertical: 20.0
        // ),
        padding: EdgeInsets.all(10.0),
        children: [_cardType1()],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Aquí está la descripción de la tarjeta que indica a qué se refiere la misma.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}
