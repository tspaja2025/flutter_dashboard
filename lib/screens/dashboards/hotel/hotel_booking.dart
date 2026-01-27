import 'package:shadcn_flutter/shadcn_flutter.dart';

class HotelBookingScreen extends StatelessWidget {
  const HotelBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(
            spacing: 16,
            children: [
              const Text("Bookings").bold().large(),
              ButtonGroup(
                children: [
                  IconButton.outline(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.chevronLeft),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: const Text("Tue, Jan 27"),
                  ),
                  IconButton.outline(
                    onPressed: () {},
                    icon: const Icon(LucideIcons.chevronRight),
                  ),
                ],
              ),
              const Spacer(),
              PrimaryButton(
                onPressed: () {},
                leading: const Icon(LucideIcons.plus),
                child: const Text("Booking Room"),
              ),
            ],
          ),

          const SizedBox(height: 16),

          OutlinedContainer(
            width: (MediaQuery.of(context).size.width - 60),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                _buildHeaderRow(context),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("07:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("08:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("09:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("10:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("11:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("12:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    BuildRowContainer(
                      isFirst: true,
                      children: [const Text("13:00 AM")],
                    ),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(children: []),
                    BuildRowContainer(isLast: true, children: []),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: 96,
          height: 64,
          alignment: .center,
          child: const Text("Time"),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 1"),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 2"),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 3"),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 4"),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 5"),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Theme.of(context).colorScheme.border),
            ),
          ),
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 6"),
        ),
        Container(
          width: (MediaQuery.of(context).size.width - 208) / 7,
          height: 64,
          alignment: .center,
          child: const Text("Room 7"),
        ),
      ],
    );
  }
}

class BuildRowContainer extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final List<Widget> children;

  const BuildRowContainer({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isFirst)
          Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Theme.of(context).colorScheme.border),
              ),
            ),
            width: 96,
            height: (MediaQuery.of(context).size.height - 73) / 7,
            alignment: .topCenter,
            child: Column(children: children),
          )
        else
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: isLast
                        ? BorderSide.none
                        : BorderSide(
                            color: Theme.of(context).colorScheme.border,
                          ),
                  ),
                ),
                width: (MediaQuery.of(context).size.width - 208) / 7,
                height: (MediaQuery.of(context).size.height - 73) / 7,
                alignment: .center,
                child: Column(children: children),
              ),
            ),
          ),
      ],
    );
  }
}
