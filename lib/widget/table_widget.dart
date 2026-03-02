import 'package:shadcn_flutter/shadcn_flutter.dart';

class TableWidget extends StatefulWidget {
  final bool hasCheckbox;
  final List<TableCell> headerChildren;
  final List<TableRow> bodyChildren;
  final Map<int, TableSize>? columnWidths;

  const TableWidget({
    super.key,
    this.hasCheckbox = false,
    required this.headerChildren,
    required this.bodyChildren,
    required this.columnWidths,
  });

  @override
  State<TableWidget> createState() => TableWidgetState();
}

class TableWidgetState extends State<TableWidget> {
  CheckboxState _state = CheckboxState.unchecked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          columnWidths: widget.columnWidths,
          rows: [
            TableRow(
              cells: [
                if (widget.hasCheckbox)
                  TableCell(
                    child: Container(
                      padding: const .all(8),
                      child: Checkbox(
                        state: _state,
                        onChanged: (state) {
                          setState(() {
                            _state = state;
                          });
                        },
                      ),
                    ),
                  ),
                ...widget.headerChildren,
              ],
            ),

            ...widget.bodyChildren,
          ],
        ),

        const SizedBox(height: 16),

        Row(
          spacing: 8,
          children: [
            const Text("0 of 6 row(s) selected."),
            const Spacer(),
            IconButton.outline(
              enabled: false,
              onPressed: () {},
              icon: const Icon(LucideIcons.chevronLeft),
            ),
            IconButton.outline(
              enabled: false,
              onPressed: () {},
              icon: const Icon(LucideIcons.chevronRight),
            ),
          ],
        ),
      ],
    );
  }
}
