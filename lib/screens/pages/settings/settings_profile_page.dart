import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsProfilePageScreen extends StatelessWidget {
  const SettingsProfilePageScreen({super.key});

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
                  const Text("Settings Profile Page").bold().large(),
                  const SizedBox(height: 4),
                  const Text(
                    "Manage your account settings and set e-mail preferecnes.",
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
                    Row(
                      spacing: 16,
                      children: [
                        Avatar(
                          size: 64,
                          initials: Avatar.getInitials("ts paja"),
                          provider: const NetworkImage(
                            "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                          ),
                        ),
                        PrimaryButton(
                          onPressed: () {},
                          child: const Text("Upload image"),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#username),
                      label: const Text("Username"),
                      child: TextField(placeholder: const Text("username")),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "This is your public display name. It can be your real name or a pseudonym. You can only change this once every 30 days.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#email),
                      label: const Text("Email"),
                      child: TextField(placeholder: const Text("email")),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "You can manage verified email addresses in your email settings.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    FormField(
                      key: FormKey(#bio),
                      label: const Text("Bio"),
                      child: TextField(placeholder: const Text("bio")),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "You can @mention other users and organizations to link to them.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    const Text("URLs"),
                    const SizedBox(height: 4),
                    const Text(
                      "Add links to your website, blog, or social media profiles.",
                    ).muted().small(),
                    const SizedBox(height: 4),
                    TextField(placeholder: const Text("http://example.com")),
                    const SizedBox(height: 8),
                    TextField(placeholder: const Text("http://example.com")),
                    const SizedBox(height: 8),
                    OutlineButton(
                      onPressed: () {},
                      child: const Text("Add URL"),
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
