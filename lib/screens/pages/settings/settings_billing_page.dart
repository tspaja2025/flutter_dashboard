import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsBillingPageScreen extends StatelessWidget {
  const SettingsBillingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Settings Billing Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
