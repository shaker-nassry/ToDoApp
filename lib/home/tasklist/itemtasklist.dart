import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class itemtasklist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          decoration: BoxDecoration(
              color:Theme.of(context).primaryColor ,
              borderRadius: BorderRadius.circular(18)
          ),
          height: 80,
          width: 5,
        ),
        Column(
          children: [
          Text(AppLocalizations.of(context)!.tasktitle,
          style: Theme.of(context).textTheme.titleMedium ,
          ),
            SizedBox(height: 4),
            Text(AppLocalizations.of(context)!.taskdes,
              style: Theme.of(context).textTheme.bodySmall ,
            ),
            SizedBox(height: 4),
            Text(AppLocalizations.of(context)!.tasktime,
              style: Theme.of(context).textTheme.bodySmall ,
            ),
        ],),

        Container(
          width: 40,
          height: 25,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor ,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(Icons.check , size: 25,
          color: Theme.of(context).cardColor ,),

        )
      ],
      ),

    );
  }
}
