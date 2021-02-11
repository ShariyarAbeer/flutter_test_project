import 'package:flutter/material.dart';
import './datapage.dart';

class DammyData extends StatefulWidget {
  @override
  _DammyDataState createState() => _DammyDataState();
}

class _DammyDataState extends State<DammyData> {
  final myControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is dummy Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("go back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DataPage(
                    name: "abeer",
                    adress: "Adabor",
                  ),
                ),
              );
            },
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  controller: myControl,
                ),
              ],
            ),
          ),
          RaisedButton(
            child: Text("data pass "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DataPage(
                    name: myControl.text,
                    adress: "Adabor",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
