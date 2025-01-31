import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechView extends StatefulWidget {
  const TextToSpeechView({super.key});

  @override
  _TextToSpeechViewState createState() => _TextToSpeechViewState();
}

class _TextToSpeechViewState extends State<TextToSpeechView> {
  FlutterTts flutterTts = FlutterTts();
  String _text = 'Escribe algo para convertirlo en voz';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (val) => setState(() => _text = val),
            decoration: const InputDecoration(hintText: 'Ingresa el texto aquí'),
          ),
          ElevatedButton(
            onPressed: () => _speak(),
            child: const Text('Escuchar Texto'),
          ),
        ],
      ),
    );
  }

  Future _speak() async {
    await flutterTts.speak(_text);
  }
}
