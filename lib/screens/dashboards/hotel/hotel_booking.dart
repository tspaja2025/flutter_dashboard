import 'package:shadcn_flutter/shadcn_flutter.dart';

class HotelBookingScreen extends StatelessWidget {
  const HotelBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Hotel booking Page").bold().large()]),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
