import 'package:shadcn_flutter/shadcn_flutter.dart';

class TasksAppScreen extends StatelessWidget {
  const TasksAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Tasks App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
