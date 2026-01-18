import 'package:shadcn_flutter/shadcn_flutter.dart';

class ApiKeysAppScreen extends StatelessWidget {
  const ApiKeysAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Api Keys App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
