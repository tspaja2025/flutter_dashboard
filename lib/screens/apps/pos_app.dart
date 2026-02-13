import 'package:shadcn_flutter/shadcn_flutter.dart';

class PosAppScreen extends StatelessWidget {
  const PosAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            spacing: 8,
            children: [
              const Text("POS App").bold().large(),
              const Spacer(),
              OutlineButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.plus),
                child: const Text("Add Product"),
              ),
              OutlineButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.filePen),
                child: const Text("Tables"),
              ),
              IconButton.outline(
                onPressed: () {},
                icon: const Icon(LucideIcons.search),
              ),
            ],
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
