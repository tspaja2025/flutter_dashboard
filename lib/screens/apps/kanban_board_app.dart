import 'package:shadcn_flutter/shadcn_flutter.dart';

class KanbanBoardAppScreen extends StatelessWidget {
  const KanbanBoardAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Kanban Board App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
