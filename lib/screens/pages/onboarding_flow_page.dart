import 'package:shadcn_flutter/shadcn_flutter.dart';

class OnboardingFlowPageScreen extends StatelessWidget {
  const OnboardingFlowPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Onboarding Flow page").bold().large()]),

          const SizedBox(height: 16),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.laptop, size: 48),
                      const Text("Technology"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.palette, size: 48),
                      const Text("Design"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.chartLine, size: 48),
                      const Text("Marketing"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.banknote, size: 48),
                      const Text("Finance"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.building, size: 48),
                      const Text("Healthcare"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.graduationCap, size: 48),
                      const Text("Education"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.goal, size: 48),
                      const Text("Sports"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.plane, size: 48),
                      const Text("Travel"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.pizza, size: 48),
                      const Text("Food"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.music, size: 48),
                      const Text("Music"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.image, size: 48),
                      const Text("Art"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.camera, size: 48),
                      const Text("Photography"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.pencil, size: 48),
                      const Text("Writing"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.gamepad, size: 48),
                      const Text("Gaming"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: OutlinedContainer(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      const Icon(LucideIcons.weight, size: 48),
                      const Text("Fitness"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: .end,
            children: [
              PrimaryButton(
                onPressed: () {},
                child: const Text("Continue (0 selected)"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
