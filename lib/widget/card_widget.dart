import 'package:shadcn_flutter/shadcn_flutter.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Widget> leading;
  final List<Widget> trailing;
  final List<Widget> children;

  const CardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.leading = const [],
    this.trailing = const [],
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderColor: Theme.of(context).colorScheme.border,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ...leading,
              if (title.isNotEmpty || subtitle.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(title).semiBold, Text(subtitle).muted.small],
                ),
              const Spacer(),
              ...trailing,
            ],
          ).gap(8),

          const SizedBox(height: 16),

          ...children,
        ],
      ),
    );
  }
}
