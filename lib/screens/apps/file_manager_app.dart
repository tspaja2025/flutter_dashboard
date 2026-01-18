import 'package:shadcn_flutter/shadcn_flutter.dart';

class FileManagerAppScreen extends StatelessWidget {
  const FileManagerAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("File Manager App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
