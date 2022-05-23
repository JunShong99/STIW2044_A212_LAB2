// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';



class LoginFile extends StatefulWidget {
  const LoginFile({Key? key}) : super(key: key);

  @override
  State<LoginFile> createState() => _LoginFileState();
}

class _LoginFileState extends State<LoginFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      );
  }
}