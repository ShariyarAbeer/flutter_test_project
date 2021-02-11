import 'package:flutter/material.dart';
import 'package:list_word/dammyData.dart';
import './List.dart';

class MyHomePage extends StatefulWidget {
  final String text;
  MyHomePage({Key key, this.text}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.text),
        ),
        body: Column(
          children: [
            Expanded(child: SizedBox(child: Listtype())),
            new RaisedButton(
              child: Text("Click for next"),
              color: Colors.blue[900],
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DammyData()));
              },
            ),
          ],
        ));
  }
}
