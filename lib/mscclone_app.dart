import 'package:flutter/material.dart';

class mscClone_App extends StatefulWidget {
  const mscClone_App({super.key});

  @override
  State<mscClone_App> createState() => _mscClone_AppState();
}

class _mscClone_AppState extends State<mscClone_App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
            color: Colors.red
            ,
          )),
          Expanded(
            flex: 2,
              child: Container(
            color: Colors.blue,
          ))
        ],
      ),
    );
  }
}
