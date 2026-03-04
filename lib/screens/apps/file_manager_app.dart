import 'package:flutter_dashboard/widget/table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class FileManagerAppScreen extends StatefulWidget {
  const FileManagerAppScreen({super.key});

  @override
  State<FileManagerAppScreen> createState() => FileManagerAppScreenState();
}

class FileManagerAppScreenState extends State<FileManagerAppScreen> {
  CheckboxState _state = CheckboxState.unchecked;

  final files = [
    FilesRow(name: "Brand Styles Guide", date: "13/02/2026", size: "2.0MB"),
    FilesRow(name: "Brand Styles Guide", date: "13/02/2026", size: "2.0MB"),
    FilesRow(name: "Design", date: "13/02/2026", size: "2.0MB"),
    FilesRow(name: "Project Brief", date: "13/02/2026", size: "2.0MB"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("File Manager App").bold.large,
            const Spacer(),
            SizedBox(
              width: 200,
              child: TextField(
                placeholder: const Text("Search for files and folders..."),
              ),
            ),
            PrimaryButton(
              onPressed: () {},
              leading: const Icon(LucideIcons.upload),
              child: const Text("Upload"),
            ),
          ],
        ).gap(8),

        TableWidget(
          columnWidths: {0: FixedTableSize(48), 2: FixedTableSize(220)},
          hasCheckbox: true,
          headerChildren: [
            _buildHeaderCell("Name"),
            _buildHeaderCell("Date"),
            _buildHeaderCell("Size"),
            _buildHeaderCell("Action", true),
          ],
          bodyChildren: [...files.map((row) => _buildDataRow(context, row))],
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
                        MenuButton(child: Text("Compress")),
                        MenuButton(child: Text("Archive")),
                        MenuButton(child: Text("Share")),
                        MenuDivider(),
                        MenuButton(child: Text("Move")),
                        MenuButton(child: Text("Copy")),
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

  TableRow _buildDataRow(BuildContext context, FilesRow row) {
    return TableRow(
      cells: [
        _checkboxCell(),
        _buildCell(row.name),
        _buildCell(row.date),
        _buildCell(row.size),
        _actionCell(context),
      ],
    );
  }
}

class FilesRow {
  final String name;
  final String date;
  final String size;

  FilesRow({required this.name, required this.date, required this.size});
}
