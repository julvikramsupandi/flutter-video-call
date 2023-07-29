import 'package:flutter/material.dart';
import 'package:video_call_tutorial/call_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomepage(title: 'Video call'),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key, required this.title});

  final String title;
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Call Zegocloud SDK'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: username,
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (builder) {
                    return CallPage(username: username.text);
                  }),
                );
              },
              child: const Text('Call'),
            ),
          ],
        ),
      ),
    );
  }
}
