import 'package:shadcn_flutter/shadcn_flutter.dart';

class TextToSpeechAiAppScreen extends StatelessWidget {
  const TextToSpeechAiAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Text To Speech App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
