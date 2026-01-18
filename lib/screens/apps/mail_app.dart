import 'package:shadcn_flutter/shadcn_flutter.dart';

class MailAppScreen extends StatelessWidget {
  const MailAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Mail App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
