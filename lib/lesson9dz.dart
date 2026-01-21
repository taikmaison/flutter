

import 'package:flutter/material.dart';

class Lesson9dz extends StatefulWidget {
  final String peopleName;
  final String peopleLastName;
  const Lesson9dz(
    {
      super.key , 
      required this.peopleName,
      required this.peopleLastName,
      }
    );

  @override
  State<Lesson9dz> createState() => _Lesson9dzState();
}

class _Lesson9dzState extends State<Lesson9dz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text('Профиль'),
        backgroundColor: Colors.blue,
      ),
      body:Column
      (
        children: [
          Text(widget.peopleName),
          Text(widget.peopleLastName)
        ],
      )
    );
  }
}