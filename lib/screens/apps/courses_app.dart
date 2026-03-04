import 'package:shadcn_flutter/shadcn_flutter.dart';

class CoursesAppScreen extends StatefulWidget {
  const CoursesAppScreen({super.key});

  @override
  State<CoursesAppScreen> createState() => CoursesAppScreenState();
}

class CoursesAppScreenState extends State<CoursesAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [const Text("Courses App").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedContainer(
                    padding: const EdgeInsets.all(16),
                    height: 300,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.play),
                            ),
                            const Text("0:00 / 10:00"),
                            const Spacer(),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.volume),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.fullscreen),
                            ),
                            IconButton.ghost(
                              onPressed: () {},
                              icon: const Icon(LucideIcons.ellipsisVertical),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          width: double.infinity,
                          child: Progress(progress: 0, min: 0, max: 100),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  OutlinedContainer(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Avatar(
                          size: 44,
                          initials: Avatar.getInitials("TS"),
                          provider: const NetworkImage(
                            "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("tspaja").semiBold,
                            const Text("Programmer").muted.small,
                          ],
                        ),
                        const Spacer(),
                        IconButton.ghost(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.share2),
                        ),
                        IconButton.ghost(
                          onPressed: () {},
                          icon: const Icon(LucideIcons.bookmark),
                        ),
                      ],
                    ).gap(16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            const Text("Your Study Progress").semiBold,
                            const Chip(child: Text("55%")),
                          ],
                        ),

                        const SizedBox(height: 16),

                        SizedBox(
                          width: double.infinity,
                          child: Progress(progress: 55, min: 0, max: 100),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Course Completion").semiBold,
                            const Text("1/25").muted,
                          ],
                        ),

                        const SizedBox(height: 16),

                        OutlinedContainer(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            spacing: 16,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const Icon(
                                  LucideIcons.check,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Introduction"),
                                  const Text("20 min").muted,
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        OutlinedContainer(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            spacing: 16,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const Icon(
                                  LucideIcons.pause,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Mastering Tools"),
                                  const Text("1 hour 20 min").muted,
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 16),

                        OutlinedContainer(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            spacing: 16,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const Icon(LucideIcons.play),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Mastering another tool"),
                                  const Text("2 hour 10 min").muted,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ).gap(16),
            ),
          ],
        ).gap(16),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
