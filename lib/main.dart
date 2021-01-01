import 'package:flutter/material.dart';
import 'package:task1/screens/firstscreen.dart';
import 'package:task1/argument.dart';
import 'package:task1/screens/passingargument.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data pass using named argument',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.green,
        // appBarTheme: AppBarTheme(
        //   textTheme:TextTheme(headline4: TextStyle(fontFamily: 'Merriweather',color: Colors.black,fontStyle: FontStyle.italic)),
        // ),
        textTheme: TextTheme(
           bodyText2: TextStyle(fontSize: 50.0,color: Colors.purple,fontFamily: 'Merriweather',fontWeight: FontWeight.w700),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final ScreenArguments args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                username: args.username,
              );
            },
          );
        }
        assert(false, 'Implementation ${settings.name}');
        return null;
      },

      home: LoginPage(),

    //   routes: {
    // "/second":(context)=>DashBoard(),
    // },
    );
  }
}
