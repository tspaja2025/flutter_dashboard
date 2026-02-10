import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsAccountPageScreen extends StatefulWidget {
  const SettingsAccountPageScreen({super.key});

  @override
  State<SettingsAccountPageScreen> createState() =>
      SettingsAccountPageScreenState();
}

class SettingsAccountPageScreenState extends State<SettingsAccountPageScreen> {
  String? selectedValue;
  DateTime? _value;

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
                      key: FormKey(#name),
                      label: const Text("Name"),
                      child: TextField(placeholder: const Text("name")),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "This is the name that will be displayed on your profile and in emails.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#dateofbirth),
                      label: const Text("Date of birth"),
                      child: DatePicker(
                        value: _value,
                        mode: PromptMode.popover,
                        stateBuilder: (date) {
                          if (date.isAfter(DateTime.now())) {
                            return DateState.disabled;
                          }
                          return DateState.enabled;
                        },
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Your date of birth is used to calculate your age.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#language),
                      label: const Text("Language"),
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
                        placeholder: const Text("Select language"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "English",
                                child: Text("English"),
                              ),
                              SelectItemButton(
                                value: "French",
                                child: Text("French"),
                              ),
                              SelectItemButton(
                                value: "German",
                                child: Text("German"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "This is the language that will be used in the dashboard.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    PrimaryButton(
                      onPressed: () {},
                      child: const Text("Update Account"),
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
