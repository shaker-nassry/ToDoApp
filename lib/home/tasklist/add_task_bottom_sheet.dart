import 'package:flutter/material.dart';
import 'package:todolist/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).cardColor,
        child: Container(
          margin: EdgeInsets.all(30),
          color: Theme.of(context).cardColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Text(AppLocalizations.of(context)!.addnewtask ,
            style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10,),

            Form(
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 2,color: Theme.of(context).primaryColor),
                        ),
                      hintText: AppLocalizations.of(context)!.entertask,
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 2,color: Theme.of(context).primaryColor),
                      ),
                        hintText: AppLocalizations.of(context)!.entertaskdes,
                      hintStyle: TextStyle(color: Colors.grey)
                     ),
                    maxLines: 5,
                    minLines: 1,
                  ),

                ],

            )

            ) ,

            SizedBox(height: 20,) ,

            Text(AppLocalizations.of(context)!.selectdat ,
            style:Theme.of(context).textTheme.bodyLarge ,
            ) ,
              Text('8-7-2026' ,
                style:Theme.of(context).textTheme.bodyLarge ,
                textAlign: TextAlign.center,
              ) ,
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  //show callender
                },
                child: Text(AppLocalizations.of(context)!.selecttime ,
                  style:Theme.of(context).textTheme.bodyLarge ,
                ),
              ) ,
              Text('12:00' ,
                style:Theme.of(context).textTheme.bodyLarge ,
                textAlign: TextAlign.center,
              ) ,
              SizedBox(height: 30,),

              FloatingActionButton(
                elevation: 0,
                onPressed: (){
                },
                child: Text(AppLocalizations.of(context)!.done),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

          ],),
        ),
      ),
    );
  }
}