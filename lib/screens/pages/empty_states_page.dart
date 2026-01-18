import 'package:shadcn_flutter/shadcn_flutter.dart';

class EmptyStatesPageScreen extends StatelessWidget {
  const EmptyStatesPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Empty State Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
