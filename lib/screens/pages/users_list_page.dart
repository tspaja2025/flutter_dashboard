import 'package:shadcn_flutter/shadcn_flutter.dart';

class UsersListPageScreen extends StatelessWidget {
  const UsersListPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Users List Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
