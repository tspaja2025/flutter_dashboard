import 'package:shadcn_flutter/shadcn_flutter.dart';

class EcommerceAddProductScreen extends StatelessWidget {
  const EcommerceAddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text("E-commerce add product Page").bold().large(),
            ],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
