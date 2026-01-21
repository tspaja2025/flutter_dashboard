import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceProductDetailScreen extends StatelessWidget {
  const EcommerceProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("E-commerce product detail Page").bold().large(),
            ],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
