import 'package:flutter_dashboard/widget/card_widget.dart';
import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ApiKeysAppScreen extends StatefulWidget {
  const ApiKeysAppScreen({super.key});

  @override
  State<ApiKeysAppScreen> createState() => ApiKeysAppScreenState();
}

class ApiKeysAppScreenState extends State<ApiKeysAppScreen> {
  CheckboxState _state = CheckboxState.unchecked;

  final apiKeys = [
    ApiKeysRow(
      name: "Production API Key",
      key: "9e...f62",
      createdAt: "Jan 19, 2025",
      updatedAt: "Jan 20, 2025",
      status: "Active",
    ),
    ApiKeysRow(
      name: "Development API Key",
      key: "9e...f62",
      createdAt: "Jan 19, 2025",
      updatedAt: "Jan 20, 2025",
      status: "Inactive",
    ),
    ApiKeysRow(
      name: "Production Test",
      key: "9e...f62",
      createdAt: "Jan 19, 2025",
      updatedAt: "Jan 20, 2025",
      status: "Expired",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [const Text("Api Keys App").bold.large]),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Expanded(
              child: CardWidget(title: "Developer Plan", subtitle: ""),
            ),
            Expanded(
              child: CardWidget(
                title: "Successful conversions",
                subtitle: "1204",
              ),
            ),
            Expanded(
              child: CardWidget(
                title: "Failed conversions",
                subtitle: "23",
                children: [],
              ),
            ),
            Expanded(
              child: CardWidget(title: "API Calls", subtitle: "4328"),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            SizedBox(
              width: 200,
              child: TextField(placeholder: const Text("Filter api keys...")),
            ),
            const Spacer(),
            PrimaryButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.plus),
              child: const Text("Create Api Key"),
            ),
          ],
        ),

        const SizedBox(height: 16),

        TableWidget(
          columnWidths: {0: FixedTableSize(48)},
          hasCheckbox: true,
          headerChildren: [
            _buildHeaderCell("Name"),
            _buildHeaderCell("Api Key"),
            _buildHeaderCell("Created At"),
            _buildHeaderCell("Updated At"),
            _buildHeaderCell("Status"),
            _buildHeaderCell("Action", true),
          ],
          bodyChildren: [...apiKeys.map((row) => _buildDataRow(context, row))],
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }

  TableCell _buildHeaderCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(text).muted.semiBold,
      ),
    );
  }

  TableCell _buildCell(String text, [bool alignRight = false]) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(text),
      ),
    );
  }

  TableCell _checkboxCell() {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Checkbox(
          state: _state,
          onChanged: (state) {
            setState(() {
              _state = state;
            });
          },
        ),
      ),
    );
  }

  TableCell _actionCell(BuildContext context) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.centerRight,
        child: Builder(
          builder: (context) {
            return IconButton.ghost(
              onPressed: () {
                showDropdown(
                  context: context,
                  builder: (context) {
                    return const DropdownMenu(
                      children: [
                        MenuButton(child: Text("Actions")),
                        MenuButton(child: Text("Rename")),
                        MenuButton(child: Text("Regenerate Key")),
                        MenuButton(child: Text("Enable")),
                        MenuButton(child: Text("Revoke")),
                        MenuButton(child: Text("Delete")),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(LucideIcons.ellipsisVertical),
            );
          },
        ),
      ),
    );
  }

  TableRow _buildDataRow(BuildContext context, ApiKeysRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.name),
        _buildCell(row.key),
        _buildCell(row.createdAt),
        _buildCell(row.updatedAt),
        _buildCell(row.status),
        _actionCell(context),
      ],
    );
  }
}

class ApiKeysRow {
  final String name;
  final String key;
  final String createdAt;
  final String updatedAt;
  final String status;

  ApiKeysRow({
    required this.name,
    required this.key,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });
}
