import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todolist/home/tasklist/itemtasklist.dart';

class TaskTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child:
          CalendarTimeline(
            initialDate:DateTime.now(),
            firstDate: DateTime(2023, 9, 19),
            lastDate: DateTime(3050, 12, 31),
            onDateSelected: (date) => print(date), //logic
            leftMargin: 15,
            monthColor: Theme.of(context).canvasColor,
            dayColor: Theme.of(context).canvasColor,
            activeDayColor: Theme.of(context).primaryColor,
            activeBackgroundDayColor: Theme.of(context).canvasColor,
            dotsColor: Theme.of(context).primaryColor,
            //selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context , index){
                return itemtasklist();
              }

          ),
        )
      ],

    );
  }
}
