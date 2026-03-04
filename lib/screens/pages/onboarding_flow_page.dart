import 'package:shadcn_flutter/shadcn_flutter.dart';

class OnboardingFlowPageScreen extends StatelessWidget {
  const OnboardingFlowPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [const Text("Onboarding Flow page").bold.large]),

        Row(
          children: [
            Expanded(
              child: OutlinedContainer(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(LucideIcons.chartLine, size: 48),
                    const Text("Marketing"),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),

        Row(
          children: [
            Expanded(
              child: OutlinedContainer(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(LucideIcons.graduationCap, size: 48),
                    const Text("Education"),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),

        Row(
          children: [
            Expanded(
              child: OutlinedContainer(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(LucideIcons.pizza, size: 48),
                    const Text("Food"),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),

        Row(
          children: [
            Expanded(
              child: OutlinedContainer(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(LucideIcons.camera, size: 48),
                    const Text("Photography"),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),

        Row(
          children: [
            Expanded(
              child: OutlinedContainer(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(LucideIcons.weight, size: 48),
                    const Text("Fitness"),
                  ],
                ),
              ),
            ),
          ],
        ).gap(16),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButton(
              onPressed: () {},
              child: const Text("Continue (0 selected)"),
            ),
          ],
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
