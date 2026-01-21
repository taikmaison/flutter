import 'package:flutter/material.dart';
import 'package:flutter_application_1/Film_details_screen.dart';

class FilmsScreen extends StatefulWidget {
  final String message;
  final int number;

  const FilmsScreen(
    {
      super.key,
       required this.message,
       required this.number
       }
       );

  @override
  State<FilmsScreen> createState() => _FilmsScreenState();
}

class _FilmsScreenState extends State<FilmsScreen> {
  List<Map<String, String>> films = [
    {
      'name': 'Мальчик и птица',
      'genre': 'аниме',
      'rating': '9.5',
    },
    {
      'name': 'Унесённые призраками',
      'genre': 'аниме',
      'rating': '9.3',
    },
    {
      'name': 'Интерстеллар',
      'genre': 'фантастика',
      'rating': '8.6',
    },
    {
      'name': 'Начало',
      'genre': 'триллер',
      'rating': '8.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        // '${ widget.number}'
        widget.number.toString()
        )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.location_on),
                SizedBox(width: 6),
                Text('Город'),
                Spacer(),
                Text('Шымкент'),
                Icon(Icons.arrow_forward_ios_rounded, size: 16),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.calendar_today),
                SizedBox(width: 6),
                Text('Дата'),
                Spacer(),
                Text('Сентябрь, 20'),
                Icon(Icons.arrow_forward_ios_rounded, size: 16),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.category),
                SizedBox(width: 6),
                Text('Жанр'),
                Spacer(),
                Text('Все'),
                Icon(Icons.arrow_forward_ios_rounded, size: 16),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: films.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder:(context) => FilmDetailsScreen(
                      name: films[index]['name']!,
                      genre: films[index]['genre']!,
                      rating: films[index]['rating']!,
                      )
                      ,)
                      );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        // ✓ Иконка вместо фото
                        Container(
                          width: 100,
                          height: 140,
                          color: Colors.grey[300],
                          child: const Icon(Icons.movie, size: 50, color: Colors.grey),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              films[index]['name']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(films[index]['genre']!),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber, size: 16),
                                const SizedBox(width: 4),
                                Text(films[index]['rating']!),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}