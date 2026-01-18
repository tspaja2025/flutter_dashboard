import 'package:shadcn_flutter/shadcn_flutter.dart';

class AiChatAiAppScreen extends StatelessWidget {
  const AiChatAiAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("AI Chat App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
