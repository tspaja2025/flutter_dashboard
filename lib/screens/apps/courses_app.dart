import 'package:shadcn_flutter/shadcn_flutter.dart';

class CoursesAppScreen extends StatefulWidget {
  const CoursesAppScreen({super.key});

  @override
  State<CoursesAppScreen> createState() => CoursesAppScreenState();
}

class CoursesAppScreenState extends State<CoursesAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const Text("Courses App").large().bold(),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    OutlinedContainer(
                      padding: const .all(16),
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .end,
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
                      padding: const .all(16),
                      child: Row(
                        spacing: 16,
                        children: [
                          Avatar(
                            size: 44,
                            initials: Avatar.getInitials("TS"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("tspaja").semiBold(),
                              const Text("Programmer").muted().small(),
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
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  spacing: 16,
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              const Text("Your Study Progress").semiBold(),
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
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              const Text("Course Completion").semiBold(),
                              const Text("1/25").muted(),
                            ],
                          ),

                          const SizedBox(height: 16),

                          OutlinedContainer(
                            padding: const .all(16),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: .circular(999),
                                  ),
                                  child: const Icon(
                                    LucideIcons.check,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Introduction"),
                                    const Text("20 min").muted(),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 16),

                          OutlinedContainer(
                            padding: const .all(16),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: .circular(999),
                                  ),
                                  child: const Icon(
                                    LucideIcons.pause,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Mastering Tools"),
                                    const Text("1 hour 20 min").muted(),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 16),

                          OutlinedContainer(
                            padding: const .all(16),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: .circular(999),
                                  ),
                                  child: const Icon(LucideIcons.play),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("Mastering another tool"),
                                    const Text("2 hour 10 min").muted(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
