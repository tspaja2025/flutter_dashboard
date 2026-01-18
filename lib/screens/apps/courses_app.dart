import 'package:shadcn_flutter/shadcn_flutter.dart';

class CoursesAppScreen extends StatelessWidget {
  const CoursesAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Courses App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
