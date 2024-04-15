import 'package:flutter/material.dart';
import 'package:hello_messenger/presentation/widgets/chat_item.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = ScrollController();

  ChatListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, index) => ChatItemWidget(index),
      itemCount: 20,
      reverse: true,
      controller: listScrollController,
    ));
  }
}
