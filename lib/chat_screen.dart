// Чат
import 'package:docum/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class ChatScreens extends StatefulWidget {
  const ChatScreens({Key? key}) : super(key: key);

  @override
  _ChatScreensState createState() => _ChatScreensState();
}

class _ChatScreensState extends State<ChatScreens> {
  bool _isTyping = false;

  late TextEditingController textEditingController;
  late ScrollController _scrollController;
  late FocusNode focusNode;
  @override
  void initState() {
    _scrollController = ScrollController();
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    focusNode.dispose();
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 10,
                  right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0.1,
                                  blurRadius: 23,
                                  offset: Offset(1, 4),
                                )
                              ]),
                              child: Icon(
                                 Icons.arrow_back,
                              ))),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Images.person))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Мой наставник',
                        style: TextStyle(

                            fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.1,
                              blurRadius: 23,
                              offset: Offset(1, 4),
                            )
                          ]),
                      child: Icon(
                        Icons.more_vert_outlined,
                      ))
                ],
              ),
            ),
            SizedBox(height: 7),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          left: 10,
                          right: 10),
                      padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 15,
                          bottom: 15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(213, 215, 216, 221),
                          borderRadius:
                          BorderRadius.circular(40)),
                      child: TextField(
                        focusNode: focusNode,
                        style: TextStyle(color: Colors.lightBlueAccent),
                        controller: textEditingController,
                        onSubmitted: (value) async {

                        },
                        decoration: InputDecoration.collapsed(
                          hintText: 'Как я могу тебе помочь?',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(253, 143, 141, 141),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () async {

                      },
                      child: Container(
                          padding: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.1,
                              blurRadius: 23,
                              offset: Offset(1, 4),
                            )
                          ]),
                          child: Icon(
                            Icons.send_rounded,
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void scrollListToEnd() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 2), curve: Curves.easeInOut);
  }


}
