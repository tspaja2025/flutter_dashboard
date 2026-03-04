import 'package:shadcn_flutter/shadcn_flutter.dart';

class AiChatAiAppScreen extends StatelessWidget {
  const AiChatAiAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [const Text("AI Chat").bold.large]),

        SizedBox(
          width: 800,
          height: MediaQuery.of(context).size.height - 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
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
              ).gap(8),
            ],
          ),
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
