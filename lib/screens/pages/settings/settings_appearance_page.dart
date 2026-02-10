import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsAppearancePageScreen extends StatefulWidget {
  const SettingsAppearancePageScreen({super.key});

  @override
  State<SettingsAppearancePageScreen> createState() =>
      SettingsAppearancePageScreenState();
}

class SettingsAppearancePageScreenState
    extends State<SettingsAppearancePageScreen> {
  String? selectedValue;

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
                  const Text("Settings Account Page").bold().large(),
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
                    FormField(
                      key: FormKey(#font),
                      label: const Text("Font"),
                      child: Select<String>(
                        itemBuilder: (context, item) {
                          return Text(item);
                        },
                        popupConstraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 200,
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        value: selectedValue,
                        placeholder: const Text("Select font"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Inter",
                                child: Text("Inter"),
                              ),
                              SelectItemButton(
                                value: "Mono",
                                child: Text("Mono"),
                              ),
                              SelectItemButton(
                                value: "System",
                                child: Text("System"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Set the font you want to use in the dashboard.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    const Text("Theme"),
                    const SizedBox(height: 4),
                    const Text(
                      "Set the font you want to use in the dashboard.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    Row(
                      spacing: 16,
                      children: [
                        OutlinedContainer(
                          width: 100,
                          height: 100,
                          child: const Text("Light").center(),
                        ),
                        OutlinedContainer(
                          width: 100,
                          height: 100,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.neutral.cardForeground,
                          child: const Text(
                            "Dark",
                            style: TextStyle(color: Colors.white),
                          ).center(),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    PrimaryButton(
                      onPressed: () {},
                      child: const Text("Update preferences"),
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
