import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignaturePage extends StatefulWidget {
  const SignaturePage({Key? key}) : super(key: key);

  @override
  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  final keySignaturePad = GlobalKey<SfSignaturePadState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Распишитесть в поле"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Clear",
            ),
            style: TextButton.styleFrom(foregroundColor: Colors.white),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 250,
                child: SfSignaturePad(
              key: keySignaturePad,
              backgroundColor: Color.fromARGB(87, 76, 175, 79),
            )),
          )
        ],
      ),
    );
  }
}
