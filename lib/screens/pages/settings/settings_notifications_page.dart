import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsNotificationsPageScreen extends StatelessWidget {
  const SettingsNotificationsPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Settings Notifications Page").bold().large(),
            ],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
