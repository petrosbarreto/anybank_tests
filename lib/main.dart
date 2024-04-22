import 'package:flutter/material.dart';
import 'package:flutter_tdd/screens/dashboard.dart';

void main() {
  runApp(const AnyBank());
}

class AnyBank extends StatelessWidget {
const AnyBank({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "AnyBank",
      theme: ThemeData.light(),
      home: Dashboard(),
    );
  }
}
