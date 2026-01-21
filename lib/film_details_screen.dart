

import 'package:flutter/material.dart';

class FilmDetailsScreen extends StatefulWidget {
  const FilmDetailsScreen({super.key});

  @override
  State <FilmDetailsScreen> createState() =>  FilmDetailsScreenState();
}

class  FilmDetailsScreenState extends State <FilmDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Название фильма'),),);
  }
}