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
        children: [
          _cardType1(),
          SizedBox(
            height: 30.0,
          ),
          _cardType2(),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Título de la tarjeta'),
            subtitle: Text(
                'Aquí está la descripción de la tarjeta que indica a qué se refiere la misma.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0, // para que no se mueva la tarjeta
            fit: BoxFit.cover,
          ),
          // Image(
          //   // imágenes de la web
          //   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No se que poner'),
          )
        ],
      ),
    );
  }
}
