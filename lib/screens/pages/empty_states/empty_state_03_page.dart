import 'package:shadcn_flutter/shadcn_flutter.dart';

class EmptyStates03PageScreen extends StatelessWidget {
  const EmptyStates03PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                const Icon(LucideIcons.shieldBan, size: 64),
                const SizedBox(height: 16),
                const Text("Access to this page is blocked").large().bold(),
                const Text(
                  "Please try another way or make sure you have the necessary permissions.",
                ).muted().small(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
