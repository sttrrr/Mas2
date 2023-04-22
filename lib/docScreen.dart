import 'package:flutter/material.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({Key? key}) : super(key: key);

  @override
  _DocScreenState createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Государственный контракт'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Заказчик:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Название ООО, ОАО...',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Лицо представляющее орг.:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'должность, ФИО',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Обязанности подрядчика:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'работы, которые необходимо выполнить',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Стоимость работ по контракту:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Числом, словами',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Окончание работ:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'День, месяц, год',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Размер гарантийных обязательств:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'цифры, буквы',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final text = _textController.text;
          // Do something with the text
          // ...
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
