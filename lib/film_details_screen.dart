import 'package:flutter/material.dart';

class FilmDetailsScreen extends StatefulWidget {
  final String name;
  final String genre;  
  final String rating;
  
  const FilmDetailsScreen({
    super.key,
    required this.name,
    required this.genre,  
    required this.rating,
  });

  @override
  State<FilmDetailsScreen> createState() => _FilmDetailsScreenState();
}

class _FilmDetailsScreenState extends State<FilmDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),  // Показываем название фильма
      ),
      body:Center(
        child: Column(
          children: [
          const Icon(Icons.movie, size: 250, color: Colors.grey),
          Text(widget.genre),
           Text(widget.rating)
           ],
           ),
      ),
    );
  }
}