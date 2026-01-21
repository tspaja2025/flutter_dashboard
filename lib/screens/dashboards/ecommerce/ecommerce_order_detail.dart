import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceOrderDetailScreen extends StatelessWidget {
  const EcommerceOrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("E-commerce order detail Page").bold().large(),
            ],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
