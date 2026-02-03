import 'package:fl_chart/fl_chart.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class CryptoDashboardScreen extends StatefulWidget {
  const CryptoDashboardScreen({super.key});

  @override
  State<CryptoDashboardScreen> createState() => CryptoDashboardScreenState();
}

class CryptoDashboardScreenState extends State<CryptoDashboardScreen> {
  int index = 0;
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Crypto Dashboard").bold().large()]),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Overview").semiBold().x3Large(),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        padding: const .all(16),
                        width: double.infinity,
                        height: 250,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    const Text("150").xLarge().bold(),
                                    const Text("Transactions").muted(),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    const Text("3"),
                                    const Text("Wallets"),
                                  ],
                                ),
                              ],
                            ),

                            const Text("\$46,200").x5Large().bold(),
                            const Text("Current balance").muted(),

                            const SizedBox(height: 16),
                            const Divider(),
                            const SizedBox(height: 16),

                            Row(
                              children: [
                                const Text("4,620,910 USDT"),
                                const Spacer(),
                                PrimaryButton(
                                  onPressed: () {},
                                  trailing: const Icon(
                                    LucideIcons.chevronRight,
                                  ),
                                  child: const Text("Buy"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Digital Wallets").semiBold(),
                          const Spacer(),
                          IconButton.outline(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.chevronRight),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        width: double.infinity,
                        padding: const .all(8),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Bitcoin Wallet"),
                            const SizedBox(height: 4),
                            const Text("4.4 BTC"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        width: double.infinity,
                        padding: const .all(8),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Ethereum Wallet"),
                            const SizedBox(height: 4),
                            const Text("4.4 BTC"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      OutlinedContainer(
                        width: double.infinity,
                        padding: const .all(8),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text("Avalanche Wallet"),
                            const SizedBox(height: 4),
                            const Text("4.4 BTC"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Trading").muted().small(),
                      const SizedBox(height: 4),
                      const Text("\$46,200").semiBold(),

                      const SizedBox(height: 16),

                      Tabs(
                        index: index,
                        children: const [
                          TabItem(child: Text("Buy")),
                          TabItem(child: Text("Sell")),
                        ],
                        onChanged: (int value) {
                          setState(() {
                            index = value;
                          });
                        },
                      ),

                      const SizedBox(height: 16),

                      FormField(
                        key: FormKey(#coin),
                        label: const Text("Coin"),
                        child: Select<String>(
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
                          placeholder: const Text("Coin"),
                          popup: const SelectPopup(
                            items: SelectItemList(
                              children: [
                                SelectItemButton(
                                  value: "Bitcoin",
                                  child: Text("Bitcoin"),
                                ),
                                SelectItemButton(
                                  value: "Avalance",
                                  child: Text("Avalance"),
                                ),
                                SelectItemButton(
                                  value: "Ethereum",
                                  child: Text("Ethereum"),
                                ),
                                SelectItemButton(
                                  value: "Solana",
                                  child: Text("Solana"),
                                ),
                                SelectItemButton(
                                  value: "Tether",
                                  child: Text("Tether"),
                                ),
                                SelectItemButton(
                                  value: "XRP",
                                  child: Text("XRP"),
                                ),
                                SelectItemButton(
                                  value: "Dogecoin",
                                  child: Text("Dogecoin"),
                                ),
                              ],
                            ),
                          ).call,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
                        children: [
                          Expanded(
                            child: FormField(
                              key: FormKey(#amount),
                              label: const Text("Amount (BTC)"),
                              child: TextField(initialValue: "\$0,0000005"),
                            ),
                          ),
                          Expanded(
                            child: FormField(
                              key: FormKey(#amount),
                              label: const Text("Amount (USD)"),
                              child: TextField(initialValue: "0,0000005"),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          onPressed: () {},
                          child: const Text("Make Payment"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Expanded(
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      const Text("Recent Activities").semiBold(),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Bitcoin"),
                              const Text("Feb 3, 2026").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("0.5 BTC"),
                              const Text("3980 USD").muted().small(),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Ethereum"),
                              const Text("Feb 3, 2026").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("0.5 BTC"),
                              const Text("3980 USD").muted().small(),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Dogecoin"),
                              const Text("Feb 3, 2026").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("0.5 BTC"),
                              const Text("3980 USD").muted().small(),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Tether"),
                              const Text("Feb 3, 2026").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("0.5 BTC"),
                              const Text("3980 USD").muted().small(),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Toncoin"),
                              const Text("Feb 3, 2026").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("0.5 BTC"),
                              const Text("3980 USD").muted().small(),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 8,
                        children: [
                          Avatar(
                            size: 24,
                            initials: Avatar.getInitials("ts paja"),
                            provider: const NetworkImage(
                              "https://avatars.githubusercontent.com/u/213942709?s=400&v=4",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("Avalanche"),
                              const Text("Feb 3, 2026").muted().small(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              const Text("0.5 BTC"),
                              const Text("3980 USD").muted().small(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  padding: const .all(16),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          const Text("Balance Summary").semiBold(),
                          const Spacer(),
                          Builder(
                            builder: (context) {
                              return OutlineButton(
                                onPressed: () {
                                  showDropdown(
                                    context: context,
                                    builder: (context) {
                                      return const DropdownMenu(
                                        children: [
                                          MenuButton(child: Text("Excel")),
                                          MenuButton(child: Text("PDF")),
                                        ],
                                      );
                                    },
                                  );
                                },
                                leading: const Icon(LucideIcons.download),
                                child: const Text("Export"),
                              );
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      Row(
                        spacing: 16,
                        children: [
                          OutlinedContainer(
                            padding: const .all(8),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  spacing: 8,
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        borderRadius: .circular(999),
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text("Total Received"),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text("2.0"),
                              ],
                            ),
                          ),
                          OutlinedContainer(
                            padding: const .all(8),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  spacing: 8,
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        borderRadius: .circular(999),
                                        color: Colors.gray.shade200,
                                      ),
                                    ),
                                    const Text("Total Send"),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text("1.2"),
                              ],
                            ),
                          ),
                          OutlinedContainer(
                            padding: const .all(8),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  spacing: 8,
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        borderRadius: .circular(999),
                                        color: Colors.gray.shade400,
                                      ),
                                    ),
                                    const Text("Total Withdraw"),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text("5.4"),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: LineChartSample(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LineChartSample extends StatelessWidget {
  const LineChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (touchedSpot) =>
                Colors.blue.withValues(alpha: 0.8),
          ),
        ),
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              interval: 1,
              getTitlesWidget: bottomTitleWidgets,
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          // 1
          LineChartBarData(
            isCurved: true,
            color: Colors.black,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 1),
              FlSpot(3, 1.5),
              FlSpot(5, 1.4),
              FlSpot(7, 3.4),
              // FlSpot(10, 2),
              // FlSpot(12, 2.2),
              // FlSpot(13, 1.8),
            ],
          ),
          // 2
          LineChartBarData(
            isCurved: true,
            color: Colors.gray.shade200,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 1),
              FlSpot(3, 4),
              FlSpot(5, 1.8),
              FlSpot(7, 5),
              // FlSpot(10, 2),
              // FlSpot(12, 2.2),
              // FlSpot(13, 1.8),
            ],
          ),
          // 3
          LineChartBarData(
            isCurved: true,
            color: Colors.gray.shade400,
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: const [
              FlSpot(1, 1),
              FlSpot(3, 2.8),
              FlSpot(5, 1.9),
              FlSpot(7, 3),
              // FlSpot(10, 2),
              // FlSpot(12, 2.5),
              // FlSpot(13, 1.2),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      1 => "Jan",
      2 => "Feb",
      3 => "Mar",
      4 => "Apr",
      5 => "May",
      6 => "Jun",
      7 => "Jul",
      _ => "",
    };

    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: Text(
        text,
        style: const TextStyle(fontWeight: .bold, fontSize: 16),
      ),
    );
  }
}
