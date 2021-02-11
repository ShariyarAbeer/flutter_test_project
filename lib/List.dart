import 'package:flutter/material.dart';

class Listtype extends StatefulWidget {
  @override
  _ListtypeState createState() => _ListtypeState();
}

class _ListtypeState extends State<Listtype> {
  List data = ['list1', 'list2', 'list3'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          child: ListTile(title: Text(this.data[index])),
        );
      },
      itemCount: data.length,
    );
  }
}
