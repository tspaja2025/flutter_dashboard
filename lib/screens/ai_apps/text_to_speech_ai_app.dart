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

          OutlinedContainer(
            width: 400,
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        CircularProgressIndicator(),
                        const Text("Texth to Speech").large().semiBold(),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "Text to speech app is a ui template that converts written text into spoken audio.",
                    ),
                  ],
                ).withPadding(all: 16),

                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),

                Row(
                  spacing: 8,
                  children: [
                    const Icon(LucideIcons.circleAlert),
                    const Text("This page is currently under construction."),
                  ],
                ).withPadding(left: 16, right: 16, top: 0, bottom: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
