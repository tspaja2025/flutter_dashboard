import 'package:shadcn_flutter/shadcn_flutter.dart';

class SocialMediaAppScreen extends StatelessWidget {
  const SocialMediaAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Social Media App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
