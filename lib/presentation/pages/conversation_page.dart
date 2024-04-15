import 'package:flutter/material.dart';
import 'package:hello_messenger/presentation/widgets/chat_appbar.dart';
import 'package:hello_messenger/presentation/widgets/chat_list.dart';
import 'package:hello_messenger/presentation/widgets/input_widget.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key});

  @override
  createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const ChatAppBar(), // Custom app bar for chat screen
            body: Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(), //Chat list
                  InputWidget() // The input widget
                ],
              ),
            ])));
  }
}
