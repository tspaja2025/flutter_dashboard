import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error404PageScreen extends StatelessWidget {
  const Error404PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Error 404 Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
