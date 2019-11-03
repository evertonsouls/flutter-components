import 'dart:math';

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30), _cardTipo2()],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptate hic eius exercitationem dicta ipsa doloremque natus iste, nisi cupiditate perspiciatis ipsum odit eos earum necessitatibus, repudiandae sint ullam debitis voluptatem."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
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

  _cardTipo2() {
    final url =
        'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg';

    return Card(
      child: Column(
        children: <Widget>[
          // Image(
          //   image: NetworkImage(url),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: FadeInImage(
              placeholder: AssetImage('assets/img/jar-loading.gif'),
              image: NetworkImage(url),
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text('No tengo idea de que poner'),
          )
        ],
      ),
    );
  }
}
