import 'package:shadcn_flutter/shadcn_flutter.dart';

class PosAppScreen extends StatelessWidget {
  const PosAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("POS App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
