import 'package:flutter/material.dart';

class Listtype extends StatefulWidget {
  @override
  _ListtypeState createState() => _ListtypeState();
}

class _ListtypeState extends State<Listtype> {
  List data = ['list1', 'list2', 'list3'];
  List todo = [
    {'number': '36', 'adress': '1/25', 'phon': '789'},
    {'number': '37', 'adress': '2/25', 'phon': '412'},
    {'number': '38', 'adress': '3/25', 'phon': '563'},
    {'number': '39', 'adress': '4/25', 'phon': '526'},
  ];
  List adrs = ['1/36', '2/36', '56/7'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          child: ListTile(
            title: Text(this.data[index]),
            subtitle: Text(this.adrs[index]),
          ),
        );
      },
      itemCount: data.length,
    );
  }
}
