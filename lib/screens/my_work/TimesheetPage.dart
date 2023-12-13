import 'package:flutter/material.dart';

import '../../custom_widgets/custom_app_bar.dart';
import '../../utils/strings.dart';


class TimesheetPage extends StatefulWidget {
  @override
  _TimesheetPageState createState() => _TimesheetPageState();
}

class _TimesheetPageState extends State<TimesheetPage> {
  List<TableRow> _tableRows = [];

  @override
  void initState() {
    super.initState();
    // Initialize with some default rows
    _tableRows = [
      // _buildTableRow('Project 1'),
      // _buildTableRow('Project 2'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title:Strings.my_work,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Table(
            columnWidths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(2),
              4: FlexColumnWidth(2),
              5: FlexColumnWidth(2),
              6: FlexColumnWidth(2),
              7: FlexColumnWidth(2),
              8: FlexColumnWidth(2),
              9: FlexColumnWidth(2),
              10: FlexColumnWidth(1),
              11: FlexColumnWidth(1),
            },
            children: [
              TableRow(
                children: [
                  _buildWeekDayCell('Project'),
                  _buildInvisibleCell(),
                  _buildInvisibleCell(),
                  _buildWeekDayCell('M'),
                  _buildWeekDayCell('T'),
                  _buildWeekDayCell('W'),
                  _buildWeekDayCell('T'),
                  _buildWeekDayCell('F'),
                  _buildWeekDayCell('S'),
                  _buildWeekDayCell('S'),
                  _buildInvisibleCell(),
                  _buildEmptyCell(),
                ],
              ),
              TableRow(
                children: [
                  _buildWeekDateCell(''),
                  _buildInvisibleCell(),
                  _buildInvisibleCell(),
                  _buildWeekDateCell('1'),
                  _buildWeekDateCell('2'),
                  _buildWeekDateCell('3'),
                  _buildWeekDateCell('4'),
                  _buildWeekDateCell('5'),
                  _buildWeekDateCell('6'),
                  _buildWeekDateCell('7'),
                  _buildInvisibleCell(),
                  _buildEmptyCell(),
                ],
              ),
            ],
          ),
          Table(
            columnWidths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(2),
              4: FlexColumnWidth(2),
              5: FlexColumnWidth(2),
              6: FlexColumnWidth(2),
              7: FlexColumnWidth(2),
              8: FlexColumnWidth(2),
              9: FlexColumnWidth(2),
              10: FlexColumnWidth(1),
              11: FlexColumnWidth(1),
            },
            children: _tableRows,
          ),
          Table(
            columnWidths: {
              0: FlexColumnWidth(5),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(2),
              4: FlexColumnWidth(2),
              5: FlexColumnWidth(2),
              6: FlexColumnWidth(2),
              7: FlexColumnWidth(2),
              8: FlexColumnWidth(2),
              9: FlexColumnWidth(2),
              10: FlexColumnWidth(1),
              11: FlexColumnWidth(1),
            },
            children: [_buildTimesheetTotalRow()],
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRow(String projectName) {
    return TableRow(
      children: [
        _buildProjectNameCell(projectName),
        _buildInvisibleCell(),
        _buildInvisibleCell(),
        _buildWorkedHoursCell(''),
        _buildWorkedHoursCell(''),
        _buildWorkedHoursCell(''),
        _buildWorkedHoursCell(''),
        _buildWorkedHoursCell(''),
        _buildWorkedHoursCell(''),
        _buildWorkedHoursCell(''),
        _buildInvisibleCell(),
        _buildRemoveTaskCell(0),
      ],
    );
  }

  TableRow _buildTimesheetTotalRow() {
    return TableRow(
      children: [
        _buildAddProjectCell("Add Project"),
        _buildInvisibleCell(),
        _buildInvisibleCell(),
        _buildWorkedHoursCell('0'),
        _buildWorkedHoursCell('0'),
        _buildWorkedHoursCell('0'),
        _buildWorkedHoursCell('0'),
        _buildWorkedHoursCell('0'),
        _buildWorkedHoursCell('0'),
        _buildWorkedHoursCell('0'),
        _buildInvisibleCell(),
        _buildEmptyCell(),
      ],
    );
  }

  Widget _buildWeekDayCell(String text) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        color: Colors.blue, // Set your desired background color here
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildWeekDateCell(String text) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        color: Colors.white, // Set your desired background color here
        child: Text(text),
      ),
    );
  }

  Widget _buildProjectNameCell(String text) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        // padding: EdgeInsets.all(8.0),
        color: Colors.white, // Set your desired background color here
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 11.0,
          ),
        ),
      ),
    );
  }

  Widget _buildAddProjectCell(String text) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        color: Colors.white, // Set your desired background color here
        child: TextButton(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 11.0,
            ),
          ),
          onPressed: () {
            // Add a new table row when the "Add Project" button is pressed
            setState(() {
              _tableRows.add(_buildTableRow('Project'));
            });
          },
        ),
      ),
    );
  }

  Widget _buildWorkedHoursCell(String text) {
    return TableCell(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        color: Colors.white, // Set your desired background color here
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildInvisibleCell() {
    return Visibility(
      visible: false,
      child: TableCell(
        child: Container(
          color: Colors.white,
          child: Text('Your Text Here'),
        ),
      ),
    );
  }

  Widget _buildEmptyCell() {
    return TableCell(
      child: Container(
        color: Colors.white, // Set your desired background color here
      ),
    );
  }

  Widget _buildRemoveTaskCell(int index) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.zero,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            // Add a new table row when the "Add Project" button is pressed
            setState(() {
              _tableRows.removeAt(index);
            });
          },
        ),
      ),
    );
  }
}
