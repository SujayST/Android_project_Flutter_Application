import 'package:flutter/material.dart';
import 'package:resumeapp/models/user.dart';
import 'package:resumeapp/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:resumeapp/services/auth.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: wrapper(),
      ),
    );
  }
}
