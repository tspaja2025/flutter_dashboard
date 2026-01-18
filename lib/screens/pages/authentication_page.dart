import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthenticationPageScreen extends StatelessWidget {
  const AuthenticationPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Authentication Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
