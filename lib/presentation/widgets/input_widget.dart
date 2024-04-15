import 'package:flutter/material.dart';
import 'package:hello_messenger/utils/constants/palette.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Palette.greyColor, width: 0.5)),
          color: Colors.white),
      child: Row(
        children: <Widget>[
          Material(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(
                icon: const Icon(Icons.face),
                color: Palette.primaryColor, onPressed: () {}, //TODO
              ),
            ),
          ),

          // Text input
          Flexible(
            child: TextField(
              style: TextStyle(
                  color: Palette.primaryTextColorLight, fontSize: 15.0),
              controller: textEditingController,
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message',
                hintStyle: TextStyle(color: Palette.greyColor),
              ),
            ),
          ),

          // Send Message Button
          Material(
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => {},
                color: Palette.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
