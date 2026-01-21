import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsAppearancePageScreen extends StatelessWidget {
  const SettingsAppearancePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [const Text("Settings Appearance Page").bold().large()],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
