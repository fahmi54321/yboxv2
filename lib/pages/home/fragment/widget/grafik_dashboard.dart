// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:yboxv2/pages/home/fragment/home_fragment_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class GrafikDashboard extends StatefulWidget {
  final double? height;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final DataGrafik data;
  final Periode periode;
  const GrafikDashboard({
    Key? key,
    this.height,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    required this.data,
    required this.periode,
  }) : super(key: key);

  @override
  State<GrafikDashboard> createState() => _GrafikDashboardState();
}

class _GrafikDashboardState extends State<GrafikDashboard> {
  bool isLoading = true;

  final double maxY = 20;
  final double maxX = 12;

  LineChartData get sampleData => LineChartData(
        lineTouchData: lineTouchData,
        gridData: gridData,
        titlesData: titlesData,
        borderData: borderData,
        lineBarsData: lineBarsData,
        minX: 0,
        maxX: maxX,
        maxY: maxY,
        minY: 0,
      );

  LineTouchData get lineTouchData => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData => [
        lineChartBarData,
      ];

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: primaryColor, width: 2),
          left: BorderSide(color: primaryColor, width: 2),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData => LineChartBarData(
        isCurved: true,
        color: red1,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: listPost,
      );

  List<FlSpot> get listPost {
    List<FlSpot> spots = [];
    for (var i = 0; i < widget.data.data.length; i++) {
      spots.add(
        FlSpot(
          widget.data.data[i].bln.toDouble(),
          widget.data.data[i].value > maxY
              ? maxY
              : widget.data.data[i].value.toDouble(),
        ),
      );
    }

    return spots;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('data grafikkk : ${widget.data.name}');
    return Column(
      children: <Widget>[
        SizedBox(
          height: widget.height ?? MediaQuery.of(context).size.height * 0.30,
          child: Container(
            padding: EdgeInsets.only(
              right: widget.paddingRight ?? 16.0,
              left: widget.paddingLeft ?? 6.0,
              top: widget.paddingTop ?? 0.0,
              bottom: widget.paddingBottom ?? 0.0,
            ),
            margin: EdgeInsets.only(
              right: widget.marginRight ?? 16.0,
              left: widget.marginLeft ?? 6.0,
              top: widget.marginTop ?? 0.0,
              bottom: widget.marginBottom ?? 0.0,
            ),
            child: LineChart(
              sampleData,
              duration: const Duration(
                milliseconds: 250,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1 || 1.0:
        text = '1';
        break;
      case 5 || 5.0:
        text = '5';
        break;
      case 10 || 10.0:
        text = '10';
        break;
      case 15 || 15.0:
        text = '15';
        break;
      case 20 || 20.0:
        text = '20+';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    debugPrint('value : $value');
    debugPrint('meta : ${meta.formattedValue}');
    switch (value.toInt()) {
      case 1:
        text = vText(
          'Jan',
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          color: primaryColor,
        );
        break;
      case 6:
        text = vText(
          'Jun',
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          color: primaryColor,
        );
        break;
      case 12:
        text = vText(
          'Desc',
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          color: primaryColor,
        );
        break;
      //   break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }
}
