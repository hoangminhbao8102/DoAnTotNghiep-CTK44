// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  _StatisticPageState createState() => _StatisticPageState(); 
}

class _StatisticPageState extends State<StatisticPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'THỐNG KÊ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Ngày'),
            Tab(text: 'Tuần'),
            Tab(text: 'Tháng'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildStatsView(),
          buildStatsView(),
          buildStatsView(),
        ],
      )
    );
  }

  Widget buildStatsView() {
    return ListView(
      children: <Widget>[
        const ListTile(title: Text('Thống kê trang trại')),
        const ListTile(title: Text('Thống kê vật nuôi')),
        const ListTile(title: Text('Thống kê sản phẩm')),
        LineChart(
          LineChartData(
            gridData: const FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    final String text;
                    switch (value.toInt()) {
                      case 0:
                        text = 'Jan';
                        break;
                      case 1:
                        text = 'Feb';
                        break;
                      case 2:
                        text = 'Mar';
                        break;
                      case 3:
                        text = 'Apr';
                        break;
                      case 4:
                        text = 'May';
                        break;
                      case 5:
                        text = 'Jun';
                        break;
                      case 6:
                        text = 'Jul';
                        break;
                      case 7:
                        text = 'Aug';
                        break;
                      case 8:
                        text = 'Sep';
                        break;
                      case 9:
                        text = 'Oct';
                        break;
                      case 10:
                        text = 'Nov';
                        break;
                      case 11:
                        text = 'Dec';
                        break;
                      default:
                        text = '';
                    }
                    return Text(text, style: const TextStyle(color: Colors.black, fontSize: 16));
                  },
                  reservedSize: 40,
                ),
              ),
              leftTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            borderData: FlBorderData(show: true),
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 20,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 3),
                  const FlSpot(1, 2),
                  const FlSpot(2, 5),
                  const FlSpot(3, 3.5),
                  const FlSpot(4, 4),
                  const FlSpot(5, 3),
                  const FlSpot(6, 4),
                  const FlSpot(7, 6),
                  const FlSpot(8, 6.5),
                  const FlSpot(9, 6),
                  const FlSpot(10, 8),
                  const FlSpot(11, 7),
                ],
                isCurved: true,
                color: Colors.blue,
                barWidth: 5,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: true),
                belowBarData: BarAreaData(show: false),
              ),
            ],
          )
        ),
        BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 10,
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [BarChartRodData(toY: 8, color: Colors.lightBlueAccent)],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [BarChartRodData(toY: 10, color: Colors.lightBlueAccent)],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [BarChartRodData(toY: 14, color: Colors.lightBlueAccent)],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [BarChartRodData(toY: 15, color: Colors.lightBlueAccent)],
              ),
            ],
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    final String text;
                    switch (value.toInt()) {
                      case 0:
                        text = 'Cows';
                        break;
                      case 1:
                        text = 'Chickens';
                        break;
                      case 2:
                        text = 'Sheep';
                        break;
                      case 3:
                        text = 'Pigs';
                        break;
                      default:
                        text = '';
                        break;
                    }
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      space: 8.0, // Optional space between the text and the axis
                      child: Text(text, style: const TextStyle(color: Colors.black, fontSize: 14)),
                    );
                  },
                  reservedSize: 40, // Adjust the size as needed
                ),
              ),
              leftTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
          )
        ),
        PieChart(
          PieChartData(
            sectionsSpace: 2, // Spacing between sections
            centerSpaceRadius: 50, // Radius of the inner circle, creating a donut-style chart
            sections: [
              PieChartSectionData(
                color: Colors.redAccent, // Color of this section
                value: 40, // Percentage value of this section
                title: '40%', // Text label displayed in this section
                radius: 60, // Radius of the section
                titleStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff), // White text color for better visibility
                ),
                showTitle: true, // Ensures the title is shown
              ),
              PieChartSectionData(
                color: Colors.greenAccent,
                value: 30,
                title: '30%',
                radius: 60,
                titleStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
                ),
                showTitle: true,
              ),
              PieChartSectionData(
                color: Colors.blueAccent,
                value: 30,
                title: '30%',
                radius: 60,
                titleStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
                ),
                showTitle: true,
              ),
            ],
          )
        ),
      ],
    );
  }
}