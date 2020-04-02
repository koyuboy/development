import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/phrasal_verb_screen.dart';
import './providers/phrasal_verbs_provider.dart';
import './screens/unit_screen.dart';
import './screens/my_home_page_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PhrasalVerbsProvider>(
          create: (_) => PhrasalVerbsProvider(),
        ),
      ],
      child: MaterialApp(
        title: "Phrasal Verbs",
        darkTheme: ThemeData.dark(),
        home: MyHomePage(),
        routes: {
          UnitScreen.screenName: (ctx) => UnitScreen(),
          PhrasalVerbScreen.screenName: (ctx) => PhrasalVerbScreen(),
        },
      ),
    );
  }
}
