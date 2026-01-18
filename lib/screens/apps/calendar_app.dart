import 'package:shadcn_flutter/shadcn_flutter.dart';

class CalendarAppScreen extends StatelessWidget {
  const CalendarAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Calendar App").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
