import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsProfilePageScreen extends StatelessWidget {
  const SettingsProfilePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Settings Profile Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
