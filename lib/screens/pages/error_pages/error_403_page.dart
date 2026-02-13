import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error403PageScreen extends StatelessWidget {
  const Error403PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Error 403 Page").bold().large()]),

          const SizedBox(height: 16),

          OutlinedContainer(
            width: 800,
            height: 300,
            backgroundColor: Colors.gray.shade100,
            child: Column(
              mainAxisAlignment: .center,
              children: [
                const Text("403").x8Large().bold(),
                const SizedBox(height: 16),
                const Text("No Authorization").x2Large(),
                const SizedBox(height: 16),
                const Text(
                  "You do not appear to have permission to access this page",
                ).muted().small(),
              ],
            ),
          ),

          const SizedBox(height: 16),

          OutlineButton(
            onPressed: () {},
            trailing: const Icon(LucideIcons.arrowRight),
            child: const Text("Back to Home"),
          ),
        ],
      ),
    );
  }
}
