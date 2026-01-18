import 'package:shadcn_flutter/shadcn_flutter.dart';

class NotesAppScreen extends StatelessWidget {
  const NotesAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Notes App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
