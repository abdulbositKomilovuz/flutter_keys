import 'package:flutter/material.dart';

class GlobalKeyScreen extends StatefulWidget {
  const GlobalKeyScreen({super.key});

  @override
  State<GlobalKeyScreen> createState() => _GlobalKeyScreenState();
}

class _GlobalKeyScreenState extends State<GlobalKeyScreen> {
  // use the state of the widget.
  final _key = GlobalKey<_GetMyTextState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Key'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _key.currentState?.text ?? '',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 50),
          GetMyText(
            key: _key,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => setState(() {}),
            child: const Text('Press Me'),
          )
        ],
      ),
    );
  }
}

class GetMyText extends StatefulWidget {
  const GetMyText({super.key});

  @override
  State<GetMyText> createState() => _GetMyTextState();
}

class _GetMyTextState extends State<GetMyText> {
  late String text;

  @override
  void initState() {
    super.initState();
    text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        onChanged: (value) => text = value,
        decoration: const InputDecoration(
          labelText: 'Type...',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
