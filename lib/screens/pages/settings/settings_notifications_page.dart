import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsNotificationsPageScreen extends StatefulWidget {
  const SettingsNotificationsPageScreen({super.key});

  @override
  State<SettingsNotificationsPageScreen> createState() =>
      SettingsNotificationsPageScreenState();
}

class SettingsNotificationsPageScreenState
    extends State<SettingsNotificationsPageScreen> {
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
                  const Text("Settings Notifications Page").bold().large(),
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
                    const Text("Notify me about..."),

                    const SizedBox(height: 16),

                    RadioGroup<int>(
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      child: const Column(
                        crossAxisAlignment: .start,
                        children: [
                          RadioItem(
                            value: 1,
                            trailing: Text("All new messages"),
                          ),
                          RadioItem(
                            value: 2,
                            trailing: Text("Direct messages and mentions"),
                          ),
                          RadioItem(value: 3, trailing: Text("Nothing")),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    const Text("Email notifications").large(),

                    const SizedBox(height: 16),

                    OutlinedContainer(
                      padding: const .all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Communication emails"),
                              const Text(
                                "Receive emails about your account activity.",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Switch(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    OutlinedContainer(
                      padding: const .all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Marketing emails"),
                              const Text(
                                "Receive emails about new products, features, and more.",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Switch(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    OutlinedContainer(
                      padding: const .all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Social emails"),
                              const Text(
                                "Receive emails for friend requests, follows, and more.",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Switch(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    OutlinedContainer(
                      padding: const .all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Security emails"),
                              const Text(
                                "Receive emails about your account security.",
                              ).muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Switch(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    Checkbox(
                      state: _state,
                      onChanged: (value) {
                        setState(() {
                          _state = value;
                        });
                      },
                      trailing: Column(
                        crossAxisAlignment: .start,
                        children: [
                          const Text(
                            "use different settings for my mobile devices",
                          ),
                          const Text(
                            "You can manage your mobile notifications in the mobile settings page.",
                          ).muted().small(),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    PrimaryButton(
                      onPressed: () {},
                      child: const Text("Update notifications"),
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
