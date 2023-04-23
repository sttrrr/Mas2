
import 'package:docum/signaturePage.dart';
import 'package:flutter/material.dart';

class OrgScreen extends StatefulWidget {
  const OrgScreen({Key? key}) : super(key: key);

  @override
  _OrgScreenState createState() => _OrgScreenState();
}

class _OrgScreenState extends State<OrgScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сведения о заказчике'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Юридический адрес:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Полный адрес',
              ),
            ),
            const Text(
              'Почтовый адрес:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Полный адрес',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Телефон:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '+7',
              ),
            ),
            const SizedBox(height: 8.0),
            const SizedBox(height: 8.0),
            const Text(
              'БИК:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'телефон',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'e-mail:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'mail',
              ),
            ),

            const SizedBox(height: 8.0),
            const Text(
              'ИНН:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ИНН',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'КПП:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'КПП',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'расчетный счет:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'р/с',
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'лицевой счет:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'л/с',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final text = _textController.text;
          Navigator.of(context).push(MaterialPageRoute(
             builder: (context) => SignaturePage()));
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
