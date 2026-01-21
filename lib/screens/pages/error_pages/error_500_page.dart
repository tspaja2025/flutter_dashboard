import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error500PageScreen extends StatelessWidget {
  const Error500PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Error 500 Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
