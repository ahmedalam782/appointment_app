import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class CustomShowDate extends StatefulWidget {
  const CustomShowDate({super.key});

  @override
  State<CustomShowDate> createState() => _CustomShowDateState();
}

class _CustomShowDateState extends State<CustomShowDate> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return EasyInfiniteDateTimeLine(
      physics: const BouncingScrollPhysics(),
      dayProps: EasyDayProps(
        height: MediaQuery.of(context).size.height * .12,
        inactiveDayStyle: DayStyle(
          dayNumStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          dayStrStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          monthStrStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            border: Border.all(color: Colors.blue, width: 2),
          ),
        ),
        dayStructure: DayStructure.dayStrDayNumMonth,
        todayStyle: DayStyle(
          dayNumStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          dayStrStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          monthStrStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            border: Border.all(color: Colors.blue, width: 2),
          ),
        ),
        activeDayStyle: DayStyle(
          dayNumStyle:
              Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 15),
          dayStrStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 15,
              ),
          monthStrStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 15,
              ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.orangeAccent,
                Colors.orange,
              ],
            ),
            border: Border.all(color: Colors.white, width: 2),
          ),
        ),
      ),
      showTimelineHeader: false,
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      // focusDate: tasksProvider.selectedDate,
      lastDate: DateTime.now().add(const Duration(days: 30)),
      onDateChange: (date) {
        selectedDate=date;
        setState(() {

        });
      },
      focusDate: selectedDate,
    );
  }
}
