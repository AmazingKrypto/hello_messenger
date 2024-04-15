import 'package:flutter/material.dart';
import 'package:hello_messenger/presentation/pages/conversation_page.dart';

class ConversationPageList extends StatefulWidget {
  const ConversationPageList({super.key});

  @override
  createState() => _ConversationPageListState();
}

class _ConversationPageListState extends State<ConversationPageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const <Widget>[
        ConversationPage(),
        ConversationPage(),
        ConversationPage()
      ],
    );
  }
}
