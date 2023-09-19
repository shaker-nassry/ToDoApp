import 'package:flutter/material.dart';
import 'package:todolist/home/settings/settingstab.dart';
import 'package:todolist/home/tasklist/add_task_bottom_sheet.dart';
import 'package:todolist/home/tasklist/tasklisttab.dart';
import 'package:todolist/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:calendar_timeline/calendar_timeline.dart';



class HomeScreen extends StatefulWidget {
static const String routename = "Home Screen" ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedindex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            Text('To Do List' ,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.labelLarge ,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: (){
          addTaskBottomSheet();
        },
        child: Icon(Icons.add , size: 30,),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).cardColor,
                width: 6,
          ),
              borderRadius: BorderRadius.circular(100),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index){
            selectedindex= index ;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage ('assets/images/icon_list.png'),
                ),
              label: AppLocalizations.of(context)!.tasks ,
            ) ,
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage ('assets/images/icon_settings.png'),
                ),
              label: AppLocalizations.of(context)!.settings ,
            ),
          ],
        ),
      ),
      body: tabs[selectedindex],

    );
  }
  List<Widget> tabs = [
    TaskTab() , Settingstab()
  ] ;

  void addTaskBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) =>AddTask(),
    );
  }
}
