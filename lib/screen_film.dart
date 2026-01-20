import 'package:flutter/material.dart';

class FilmsScreen extends StatefulWidget {
  const FilmsScreen({super.key});

  @override
  State<FilmsScreen> createState() => _FilmsScreenState();
}

class _FilmsScreenState extends State<FilmsScreen> {
  List<Map<String, String>> films = [
    {
      'image': 'assets/001.png',
      'name': 'Мальчик и птица',
      'genre': 'аниме',
      'rating': '9.5',
    },
    {
      'image': 'assets/001.png',
      'name': 'Унесённые призраками',
      'genre': 'аниме',
      'rating': '9.3',
    },
    {
      'image': 'assets/001.png',
      'name': 'Интерстеллар',
      'genre': 'фантастика',
      'rating': '8.6',
    },
    {
      'image': 'assets/001.png',
      'name': 'Начало',
      'genre': 'триллер',
      'rating': '8.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Сегодня в кино')),
      body: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.location_on),
              SizedBox(width: 6),
              Text('Город'),
              Spacer(),
              Text('Шымкент'),
              Icon(Icons.arrow_forward_ios_rounded, size: 16),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: const [
              Icon(Icons.calendar_today),
              SizedBox(width: 6),
              Text('Дата'),
              Spacer(),
              Text('Сентябрь, 20'),
              Icon(Icons.arrow_forward_ios_rounded, size: 16),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: const [
              Icon(Icons.category),
              SizedBox(width: 6),
              Text('Жанр'),
              Spacer(),
              Text('Все'),
              Icon(Icons.arrow_forward_ios_rounded, size: 16),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: films.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Image.asset(films[index]['image']!),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(films[index]['name']!),
                          Text(films[index]['genre']!),
                          Text(films[index]['rating']!),
                        ],
                      ),
                    ],
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