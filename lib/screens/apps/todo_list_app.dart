import 'package:shadcn_flutter/shadcn_flutter.dart';

class TodoListAppScreen extends StatelessWidget {
  const TodoListAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Todo List App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
