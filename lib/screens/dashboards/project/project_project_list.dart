import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectProjectListScreen extends StatelessWidget {
  const ProjectProjectListScreen({super.key});

  List<AvatarWidget> getAvatars() {
    return [
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.red),
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.green),
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.blue),
      Avatar(
        initials: Avatar.getInitials("TS"),
        backgroundColor: Colors.yellow,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Project List Page").bold.large,
            const Spacer(),
            PrimaryButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.plus),
              child: const Text("New Project"),
            ),
          ],
        ),

        Row(
          children: [
            ProjectCard(
              title: "Mobile App",
              subtitle: "Prototyping",
              date: "Feb 24, 2026",
              progress: 78,
            ),
            ProjectCard(
              title: "Design Learn Management System",
              subtitle: "UI/UX Design",
              date: "Feb 24, 2026",
              progress: 32,
            ),
            ProjectCard(
              title: "Chat Mobile app",
              subtitle: "Prototyping",
              date: "Feb 24, 2026",
              progress: 64,
            ),
            ProjectCard(
              title: "Store Dashboard",
              subtitle: "UI/UX Design",
              date: "Feb 24, 2026",
              progress: 45,
            ),
          ],
        ).gap(16),

        Row(
          children: [
            ProjectCard(
              title: "NFT Marketplace App",
              subtitle: "Prototyping",
              date: "Feb 24, 2026",
              progress: 69,
            ),
            ProjectCard(
              title: "Mobile App",
              subtitle: "UI/UX Design",
              date: "Feb 24, 2026",
              progress: 56,
            ),
            ProjectCard(
              title: "LMS App Design",
              subtitle: "UI/UX Design",
              date: "Feb 24, 2026",
              progress: 78,
            ),
            ProjectCard(
              title: "Design Learn Management System",
              subtitle: "UI/UX Design",
              date: "Feb 24, 2026",
              progress: 25,
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final double progress;

  const ProjectCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.progress,
  });

  List<AvatarWidget> getAvatars() {
    return [
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.red),
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.green),
      Avatar(initials: Avatar.getInitials("TS"), backgroundColor: Colors.blue),
      Avatar(
        initials: Avatar.getInitials("TS"),
        backgroundColor: Colors.yellow,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardWidget(
        title: title,
        subtitle: subtitle,
        children: [
          Text(date).muted.small,

          const SizedBox(height: 16),

          Row(
            children: [
              const Text("Progress"),
              const Spacer(),
              Text("$progress%"),
            ],
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: Progress(progress: progress, min: 0, max: 100),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              AvatarGroup.toLeft(children: getAvatars()),
              const Spacer(),
              const Chip(child: Text("1 week left")),
            ],
          ),
        ],
      ),
    );
  }
}
