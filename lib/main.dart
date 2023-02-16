import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt/screens/chat_screen.dart';
import 'package:flutter_chat_gpt/screens/onboarding.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "lib/.env");
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatGPT AI Assistant',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: OnBoardingScreen(),
    );
  }
}
