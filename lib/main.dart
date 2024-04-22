import 'package:flutter/material.dart';
import 'package:hello_messenger/presentation/pages/conversation_page.dart';
import 'package:hello_messenger/presentation/pages/home_page.dart';
import 'package:hello_messenger/presentation/pages/register_page.dart';
import 'package:hello_messenger/utils/memory.dart';
import 'package:hello_messenger/utils/shared_objects.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  late ThemeData theme;
  Key key = UniqueKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Messenger',
      key: key,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ConversationPage(),
    );
  }

  Widget startPage() {
    if (state == UserState.authenticated) {
      return const RegisterPage();
    } else if (state == UserState.profileUpdate) {
      // if(SharedObjects.prefs.getBool(Constants.configMessagePaging))
      //   BlocProvider.of<ChatBloc>(context).add(FetchChatListEvent());
      return const HomePage();
    } else {
      return const RegisterPage();
    }
  }
}
