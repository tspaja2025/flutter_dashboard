import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsAccountPageScreen extends StatelessWidget {
  const SettingsAccountPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Settings Account Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
