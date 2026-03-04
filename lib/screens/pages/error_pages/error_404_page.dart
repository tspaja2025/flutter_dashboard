import 'package:shadcn_flutter/shadcn_flutter.dart';

class Error404PageScreen extends StatelessWidget {
  const Error404PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [const Text("Error 404 Page").bold.large]),

        OutlinedContainer(
          width: 800,
          height: 300,
          backgroundColor: Colors.gray.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("404").x8Large.bold,
              const SizedBox(height: 16),
              const Text("Page Not Found").x2Large,
            ],
          ),
        ),

        OutlineButton(
          onPressed: () {},
          trailing: const Icon(LucideIcons.arrowRight),
          child: const Text("Back to Home"),
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
