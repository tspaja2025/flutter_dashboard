import 'package:shadcn_flutter/shadcn_flutter.dart';

class PricingColumnPageScreen extends StatelessWidget {
  const PricingColumnPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Column Pricing Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
