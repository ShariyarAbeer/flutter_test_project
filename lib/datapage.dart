import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  final String name;
  final String adress;
  DataPage({Key key, this.name, this.adress}) : super(key: key);
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World Data"),
      ),
      body: Column(
        children: [Text(widget.name), Text(widget.adress)],
      ),
    );
  }
}
