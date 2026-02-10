import 'package:shadcn_flutter/shadcn_flutter.dart';

class EmptyStates02PageScreen extends StatelessWidget {
  const EmptyStates02PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                const Icon(LucideIcons.folderPlus),

                const SizedBox(height: 16),

                const Text("Create your first project").large().bold(),
                const Text(
                  "Start by selecting a template or begin with a blank canvas.",
                ).muted().small(),

                const SizedBox(height: 16),

                OutlinedContainer(
                  width: 500,
                  padding: const .all(16),
                  child: Row(
                    spacing: 8,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: .circular(999),
                        ),
                        child: const Icon(LucideIcons.megaphone),
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Marketing Campaign"),
                          const Text(
                            "Plan and launch engaging campaigns to reach your audience",
                          ).muted().small(),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                OutlinedContainer(
                  width: 500,
                  padding: const .all(16),
                  child: Row(
                    spacing: 8,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: .circular(999),
                        ),
                        child: const Icon(LucideIcons.terminal),
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Engineering Project"),
                          const Text(
                            "manage complex builds and bring your technical ideas to life.",
                          ).muted().small(),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                OutlinedContainer(
                  width: 500,
                  padding: const .all(16),
                  child: Row(
                    spacing: 8,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: .circular(999),
                        ),
                        child: const Icon(LucideIcons.calendarDays),
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text("Event"),
                          const Text(
                            "Organize and track events that matter - from meetups to conferences.",
                          ).muted().small(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
