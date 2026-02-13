import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error404PageScreen extends StatelessWidget {
  const Error404PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Error 404 Page").bold().large()]),

          const SizedBox(height: 16),

          OutlinedContainer(
            width: 800,
            height: 300,
            backgroundColor: Colors.gray.shade100,
            child: Column(
              mainAxisAlignment: .center,
              children: [
                const Text("404").x8Large().bold(),
                const SizedBox(height: 16),
                const Text("Page Not Found").x2Large(),
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
