import 'package:shadcn_flutter/shadcn_flutter.dart';

class PricingSinglePageScreen extends StatelessWidget {
  const PricingSinglePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Single Pricing Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
