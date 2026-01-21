import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthenticationLoginPageScreen extends StatelessWidget {
  const AuthenticationLoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Login Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
