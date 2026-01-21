import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error403PageScreen extends StatelessWidget {
  const Error403PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Error 403 Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
