import 'package:cupertino_datepicker_example/page/date_picker_page.dart';
import 'package:cupertino_datepicker_example/page/search_page.dart';
import 'package:cupertino_datepicker_example/page/pop_up.dart';
import 'package:cupertino_datepicker_example/widget/tabbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Roll No. 2018-CS-115

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Cupertino Widgets';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Cupertino Widgets',
        tabs: [
          Tab(icon: Icon(Icons.date_range), text: 'Date'),
          Tab(icon: Icon(Icons.search), text: 'Search Field'),
          Tab(icon: Icon(Icons.power_input_outlined), text: 'PopUpSurface'),
        ],
        children: [
          DatePickerPage(),
          MyPrefilledSearch(),
          popUpSurface(),
        ],
      );
}
