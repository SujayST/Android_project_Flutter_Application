import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resumeapp/home.dart';
import 'package:resumeapp/models/user.dart';
import 'package:resumeapp/screens/home/home.dart';

class wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    //return either home or authenticate widget
    if(user == null){
      print('going to welcome page');
      return home();
    }else{
      print('Going to home page');
      return Home();
    }
  }
}
