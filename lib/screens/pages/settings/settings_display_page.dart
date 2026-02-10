import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsDisplayPageScreen extends StatefulWidget {
  const SettingsDisplayPageScreen({super.key});

  @override
  State<SettingsDisplayPageScreen> createState() =>
      SettingsDisplayPageScreenState();
}

class SettingsDisplayPageScreenState extends State<SettingsDisplayPageScreen> {
  int? selectedValue;
  bool value = false;
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 800,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  const Text("Settings Display Page").bold().large(),
                  const SizedBox(height: 4),
                  const Text(
                    "Manage your account settings and set e-mail preferences.",
                  ).muted().small(),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: SizedBox(
              width: 800,
              child: Card(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    const Text("Sidebar"),
                    const Text(
                      "Select the items you want to display in the sidebar",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: const Text("Recents"),
                    ),
                    const SizedBox(height: 4),
                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: const Text("Home"),
                    ),
                    const SizedBox(height: 4),
                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: const Text("Applications"),
                    ),
                    const SizedBox(height: 4),
                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: const Text("Desktop"),
                    ),
                    const SizedBox(height: 4),
                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: const Text("Downloads"),
                    ),
                    const SizedBox(height: 4),
                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: const Text("Documents"),
                    ),

                    const SizedBox(height: 16),

                    PrimaryButton(
                      onPressed: () {},
                      child: const Text("Update display"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
