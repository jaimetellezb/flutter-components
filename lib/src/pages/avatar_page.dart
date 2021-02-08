
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://s-media-cache-ak0.pinimg.com/originals/29/88/ab/2988ab54d9df4bd3b66f2486cdc93ad8.jpg'),
           ),
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MB'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://assets.tonica.la/__export/1609884639754/sites/debate/img/2021/01/05/rowan-atkinson-ya-no-disfruta-al-interpretar-a-mr-bean.jpg_1037907305.jpg'),
          placeholder: AssetImage('assets/loading2.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}