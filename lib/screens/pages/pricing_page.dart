import 'package:shadcn_flutter/shadcn_flutter.dart';

class PricingPageScreen extends StatelessWidget {
  const PricingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Pricing Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
