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
        ],
      ),
    );
  }
}
