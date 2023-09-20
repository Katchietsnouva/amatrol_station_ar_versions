import 'package:amatrol_station_ar_versions/home_screen.dart';
import 'package:flutter/material.dart';

Future <void> main() async
{
  try
  {
    WidgetsFlutterBinding.ensureInitialized()

  }
  catch(errorMsg)
  {
    print('Error::' + errorMsg.toString()):

  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amatrol Station Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
