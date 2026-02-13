import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error500PageScreen extends StatelessWidget {
  const Error500PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Error 500 Page").bold().large()]),

          const SizedBox(height: 16),

          OutlinedContainer(
            width: 800,
            height: 300,
            backgroundColor: Colors.red.shade100,
            child: Column(
              mainAxisAlignment: .center,
              children: [
                const Text(
                  "500",
                  style: TextStyle(color: Colors.red),
                ).x8Large().bold(),
                const SizedBox(height: 16),
                const Text("Server Error").x2Large(),
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
