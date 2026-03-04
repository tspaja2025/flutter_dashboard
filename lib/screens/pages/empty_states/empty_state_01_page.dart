import 'package:shadcn_flutter/shadcn_flutter.dart';

class EmptyStates01PageScreen extends StatelessWidget {
  const EmptyStates01PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              const Icon(LucideIcons.folderPlus),
              const SizedBox(height: 16),
              const Text("No Projects").large.bold,
              const Text("Get started by created a new project").muted.small,
            ],
          ),
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
