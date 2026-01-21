import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_film.dart';

class Lesson8 extends StatefulWidget {
  const Lesson8({super.key});

  @override
  State<Lesson8> createState() => _Lesson8State();
}

class _Lesson8State extends State<Lesson8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson8')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.deepPurple, height: 200),
            const Divider(
              thickness: 4,
              height: 0,
              color: Colors.black,
              indent: 16,
              endIndent: 16,
            ),
            ListTile(
              minVerticalPadding: 10,
              leading: const Icon(Icons.movie, size: 40), // ✓ Иконка вместо фото
              title: const Text('Avatar', style: TextStyle(fontSize: 20)),
              subtitle: const Text('Мелодрамма'),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FilmsScreen(
                      message: 'Привет с первой страницы',
                      number: 100),
                  ),
                );
              },
            ),
            Card(
              elevation: 10,
              color: Colors.lime,
              shadowColor: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Text(
                      'Новость дня',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 16),
                    Text('Сегодня произошло важное событие'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FilmsScreen(
                      message: 'Экран фильмов',
                      number: 200
                      ),
                  ),
                );
              },
              child: const Text('Перейти'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}