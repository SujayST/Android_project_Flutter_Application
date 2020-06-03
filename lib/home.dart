import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeapp/screens/authenticate/register.dart';
import 'package:resumeapp/screens/authenticate/sign_in.dart';
import 'second_page.dart';
import 'SignUp.dart';
import 'dart:async';

class home extends StatefulWidget {
  home({Key key}) : super(key:key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    List<Widget> menu =<Widget>[new IconButton(
      icon: new Icon(Icons.image),
      tooltip: 'Second screen',
      onPressed: _toSecondPage,
    ),
    ];

    return Scaffold(
      appBar: AppBar(
        //title: Text('Box Decoration '),

        backgroundColor: Colors.pink,
       // actions: menu,
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/boarder1.png'),
                fit: BoxFit.fill,
              )
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/ResumeIcon.png'),
                  height: 250,
                ),
                SizedBox(
                  height:150.0,
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: RaisedButton(
                    onPressed: _toSecondPage,
                    color: Colors.green,

                    //onHighlightChanged: MaterialState.hovered,

                    child: Text('LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,

                        ),
                      ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: RaisedButton(
                    onPressed: _toSignUp,
                    color: Colors.green,
                    hoverColor: Colors.pink,
                    //onHighlightChanged: MaterialState.hovered,
                    child: Text('SIGN UP',
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
              ],
            )
          ),
        ),
      Container(
        height: 30,
        color: Colors.pink,
      ),
      ],
    );
  }

  Future _toSecondPage() async{
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
        builder: (BuildContext context) {
          return  SignIn();
        },
    ));
  }
  Future _toSignUp() async{
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
        return Register();
      },
    ));
  }
}


