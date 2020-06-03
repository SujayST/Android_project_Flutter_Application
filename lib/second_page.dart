import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anusha Chikmath'),
        backgroundColor: Colors.grey,
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return Container(
      child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Tutorial in progress',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/Picture6.jpg'),
        ),
      ],
      ),
    );
  }
}
