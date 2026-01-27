import 'package:shadcn_flutter/shadcn_flutter.dart';

class AiChatAiAppScreen extends StatelessWidget {
  const AiChatAiAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("AI Chat").bold().large()]),

          const SizedBox(height: 16),

          SizedBox(
            width: 800,
            height: MediaQuery.of(context).size.height - 150,
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    IconButton.outline(
                      onPressed: () {},
                      icon: const Icon(LucideIcons.paperclip),
                    ),
                    Expanded(
                      child: TextField(
                        placeholder: const Text("Ask me anything..."),
                      ),
                    ),
                    IconButton.outline(
                      onPressed: () {},
                      icon: const Icon(LucideIcons.send),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
