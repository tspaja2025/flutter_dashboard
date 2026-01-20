import 'package:shadcn_flutter/shadcn_flutter.dart';

class CalendarAppScreen extends StatefulWidget {
  const CalendarAppScreen({super.key});

  @override
  State<CalendarAppScreen> createState() => CalendarAppScreenState();
}

class CalendarAppScreenState extends State<CalendarAppScreen> {
  DateTime _currentMonth = DateTime(DateTime.now().year, DateTime.now().month);
  String? _selectedValue;
  DateTime? _selectedDate;

  final List<String> _weekdays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  String _getMonthYearString() {
    return "${_getMonthName(_currentMonth.month)} ${_currentMonth.year}";
  }

  String _getMonthName(int month) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    return months[month - 1];
  }

  void _navigateToPreviousMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month - 1);
    });
  }

  void _navigateToNextMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month + 1);
    });
  }

  void _navigateToToday() {
    setState(() {
      _currentMonth = DateTime(DateTime.now().year, DateTime.now().month);
      _selectedDate = DateTime.now();
    });
  }

  List<List<DateTime>> _generateCalendarDays() {
    final firstDayOfMonth = DateTime(
      _currentMonth.year,
      _currentMonth.month,
      1,
    );
    final lastDayOfMonth = DateTime(
      _currentMonth.year,
      _currentMonth.month + 1,
      0,
    );

    // Get weekday of first day (1 = Monday, 7 = Sunday)
    int firstWeekDay = firstDayOfMonth.weekday;
    if (firstWeekDay == 7) {
      firstWeekDay = 0; // Convert Sunday to 0 for out Monday-start week
    }

    final daysInMonth = lastDayOfMonth.day;
    final previousMonth = DateTime(_currentMonth.year, _currentMonth.month - 1);
    final daysInPreviousMonth = DateTime(
      previousMonth.year,
      previousMonth.month + 1,
      0,
    ).day;

    List<List<DateTime>> weeks = [];
    List<DateTime> currentWeek = [];

    // Add days from previous month
    for (int i = 0; i < firstWeekDay; i++) {
      currentWeek.add(
        DateTime(
          previousMonth.year,
          previousMonth.month,
          daysInPreviousMonth - firstWeekDay + i + 1,
        ),
      );
    }

    // Add days from current month
    for (int day = 1; day <= daysInMonth; day++) {
      currentWeek.add(DateTime(_currentMonth.year, _currentMonth.month, day));

      if (currentWeek.length == 7) {
        weeks.add(List.from(currentWeek));
        currentWeek.clear();
      }
    }

    // Add days from next month
    if (currentWeek.isNotEmpty) {
      int nextMonthDay = 1;
      while (currentWeek.length < 7) {
        currentWeek.add(
          DateTime(_currentMonth.year, _currentMonth.month + 1, nextMonthDay),
        );
        nextMonthDay++;
      }
      weeks.add(currentWeek);
    }

    return weeks;
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();

    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  bool _isSameMonth(DateTime date) {
    return date.year == _currentMonth.year && date.month == _currentMonth.month;
  }

  @override
  Widget build(BuildContext context) {
    final calendarWeeks = _generateCalendarDays();

    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Calendar App").bold().large()]),

          const SizedBox(height: 16),

          OutlinedContainer(
            child: Column(
              children: [
                Padding(
                  padding: const .all(16),
                  child: Row(
                    spacing: 8,
                    children: [
                      OutlineButton(
                        onPressed: _navigateToToday,
                        child: const Text("Today"),
                      ),
                      IconButton.ghost(
                        onPressed: _navigateToPreviousMonth,
                        icon: const Icon(LucideIcons.chevronLeft),
                      ),
                      IconButton.ghost(
                        onPressed: _navigateToNextMonth,
                        icon: const Icon(LucideIcons.chevronRight),
                      ),
                      Text(_getMonthYearString()),
                      const Spacer(),
                      Select<String>(
                        itemBuilder: (context, item) {
                          return Text(item);
                        },
                        popupConstraints: const BoxConstraints(
                          maxHeight: 300,
                          maxWidth: 200,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                        value: _selectedValue,
                        placeholder: const Text("View"),
                        popup: const SelectPopup(
                          items: SelectItemList(
                            children: [
                              SelectItemButton(
                                value: "Month",
                                child: Text("Month"),
                              ),
                              SelectItemButton(
                                value: "Week",
                                child: Text("Week"),
                              ),
                              SelectItemButton(
                                value: "Day",
                                child: Text("Day"),
                              ),
                            ],
                          ),
                        ).call,
                      ),
                      PrimaryButton(
                        onPressed: () {},
                        leading: const Icon(LucideIcons.plus),
                        child: const Text("New Event"),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: _weekdays.map((weekday) {
                    return Expanded(
                      child: Container(
                        height: 32,
                        alignment: .center,
                        child: Text(weekday).bold(),
                      ),
                    );
                  }).toList(),
                ),

                const SizedBox(height: 4),

                Column(
                  children: calendarWeeks.map((week) {
                    return Row(
                      mainAxisAlignment: .spaceEvenly,
                      children: week.map((day) {
                        final isToday = _isToday(day);
                        final isSelected =
                            _selectedDate != null &&
                            _selectedDate!.year == day.year &&
                            _selectedDate!.month == day.month &&
                            _selectedDate!.day == day.day;
                        final isCurrentMonth = _isSameMonth(day);

                        return Expanded(
                          child: Container(
                            height:
                                (MediaQuery.of(context).size.height - 112) / 6,
                            decoration: BoxDecoration(
                              border: .all(
                                color: Theme.of(context).colorScheme.border,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _selectedDate = day;
                                  if (!isCurrentMonth) {
                                    _currentMonth = DateTime(
                                      day.year,
                                      day.month,
                                    );
                                  }
                                });
                              },
                              child: Text(
                                day.day.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: isSelected || isToday
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
