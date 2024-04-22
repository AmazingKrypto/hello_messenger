import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_messenger/presentation/pages/conversation_page.dart';
import 'package:hello_messenger/presentation/widgets/chat_appbar.dart';
import 'package:hello_messenger/presentation/widgets/chat_list.dart';
import 'package:hello_messenger/presentation/widgets/input_widget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: ConversationPage()),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}
