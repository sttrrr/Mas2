import 'package:docum/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'package:open_filex/open_filex.dart';

class SignaturePage extends StatefulWidget {
  const SignaturePage({Key? key}) : super(key: key);

  @override
  _SignaturePageState createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  final keySignaturePad = GlobalKey<SfSignaturePadState>();
  var _openResult = 'Unknown';
  Future<void> openFile() async {
    const filePath = '/assets/hh.docx';
    final result = await OpenFilex.open(filePath);

    setState(() {
      _openResult = "type=${result.type}  message=${result.message}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
              Center(
                child:Padding(padding: EdgeInsets.only(right: 15),
                  child:BigText(text: "Распишитесь", size: 18,),
                ) ,
              )


        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
                child: SfSignaturePad(
              key: keySignaturePad,
              backgroundColor: Color.fromARGB(87, 76, 175, 79),
            )),
          ),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Container(
                  width: 70,
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: Icon(Icons.close, color: Colors.red, size: 50,)
                  ),
                ),
                SizedBox(width: 150,),
                Container(
                  width: 70,
                  child: IconButton(onPressed: openFile,

                      icon: Icon(Icons.check, color: Colors.green, size: 50,)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

  }
}
