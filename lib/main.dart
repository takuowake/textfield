import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField Example')),
        body: const Center(child: MyTextField()),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
        labelText: 'Enter your name',
        border: OutlineInputBorder(),
      ),
      onChanged: (text) {
        print("Current text: $text");
      },
    );
  }
}
