import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          Container(

            child: Image(
              image: AssetImage('assets/Picture4.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}




