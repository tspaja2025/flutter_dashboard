import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthenticationRegisterPageScreen extends StatelessWidget {
  const AuthenticationRegisterPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Register Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
