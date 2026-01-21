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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Жанр: ${widget.genre}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Рейтинг: ${widget.rating}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}