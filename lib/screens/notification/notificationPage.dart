import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageTitle = 'Notification Page';
    final List<String> _products = List<String>.generate(100, (idx) => "Product $idx");


    return Scaffold(
        appBar: AppBar(
          title: Text(pageTitle),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                height: 210,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [new BoxShadow(color: Colors.orange.shade200)]),
                child: Center(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text('Map'),
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Photos'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                        ),
                        ListTile(
                          leading: Icon(Icons.contacts),
                          title: Text('Contact'),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Setting'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                        )
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(20),
                height: 210,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [new BoxShadow(color: Colors.blueAccent)]),
                child: Center(
                  child: ListView.builder(
                    itemCount: _products.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('${_products[index]}'),
                      );
                    },
                  ),
                ),
              ),
            ]));
  }
}
