import 'package:flutter/material.dart';
import 'package:resumeapp/main.dart';
import 'package:resumeapp/screens/authenticate/sign_in.dart';
import 'package:resumeapp/screens/wrapper.dart';
import 'package:resumeapp/services/auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
  String email ='';
  String password ='';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign Up to Resume_App'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                _toSignInPage();
              },
              icon: Icon(Icons.person),
              label: Text('Sign In')
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              TextFormField(
                validator: (val) => val.isEmpty ? 'Please Enter an Email id!' : null,
                onChanged: (val){
                  setState(() {
                    email =val;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                validator: (val) => val.length < 6 ? 'Enter a stronger password of 6+ characters' : null,
                obscureText: true,
                onChanged: (val){
                  setState(() {
                    password =val;
                  });
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                onPressed: ()async{
                  if(_formKey.currentState.validate()){
                    dynamic result = await _auth.registerwithEmail(email, password);
                    if(result==null){
                      setState(() {
                        error = 'Please provide valid Email Id';
                      });
                    }else{
                      setState(() {
                        error = 'Registered Successfully!';
                        Navigator.pop(context);
                      });
                    }
                  }

                },
              ),
              SizedBox(height: 12),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
  Future _toSignInPage() async{
    Navigator.pop(context);
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return  SignIn();
      },
    ));
  }
}
