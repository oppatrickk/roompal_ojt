import 'package:flutter/material.dart';
import 'package:roompal_ojt/widgets/const_elements.dart';
import 'package:roompal_ojt/widgets/widget_elements.dart';
import 'package:roompal_ojt/widgets/widget_property_owner.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class StayView extends StatefulWidget {
  const StayView({super.key});
  static const String id = 'StayView';

  @override
  State<StayView> createState() => _StayViewState();
}

class _StayViewState extends State<StayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/img/wmB.png'),
      ),
      endDrawer: buildSideBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //search bar and filter box
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: searchBar(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: null,
                      child: const FilterBox(),
                    ),
                  ),
                ],
              ),
              ksizedBoxTextFieldCol,
              //Property Count
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: PropertyCount('Total Property', '25'),
                  ),
                  Flexible(
                    child: PropertyCount('Total Guest', '30'),
                  ),
                ],
              ),
              kSizedBox,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: boxDecoration(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stay View',
                          style: textStyleHeader(color: Color(0xFF242731), size: 32),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.arrow_back_ios),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        )
                      ],
                    ),
                    ksizedBoxTextFieldCol,
                    Row(
                      children: [
                        legend(
                          label: 'Transient',
                          color: Color(0xFF5C8BE1),
                        ),
                        ksizedBoxTextFieldRow,
                        legend(
                          label: 'Monthly',
                          color: Colors.green,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        stats(label: 'Occupied', number: 10),
                        stats(label: 'Pending', number: 5),
                        stats(label: 'Vacant', number: 15),
                      ],
                    ),
                  ],
                ),
              ),
              SfCalendar(
                view: CalendarView.month,
                dataSource: MeetingDataSource(_getDataSource()),
                monthViewSettings: MonthViewSettings(appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row stats({required String label, required int number}) {
    return Row(
      children: [
        Text(
          '$label:',
          style: textStyleContent(
            size: 16,
            color: Color(0xFF242731),
          ),
        ),
        Text(
          number.toString(),
          style: textStyleContent(
            size: 16,
            color: Color(0xFF242731),
          ),
        ),
        ksizedBoxTextFieldRow,
      ],
    );
  }

  Row legend({required String label, required Color color}) {
    return Row(
      children: [
        Text(
          label,
          style: textStyleContent(
            size: 18,
            color: Color(0xFF242731),
          ),
        ),
        ksizedBoxTextFieldRow,
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        )
      ],
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting('Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
