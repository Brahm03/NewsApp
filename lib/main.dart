import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/components/navigation/navigation_service.dart';
import 'package:newsapp/core/components/theme/themes.dart';
import 'package:newsapp/routes/allroutes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          navigatorKey: NavigationService.instance.navigatorKey,
          theme: Allthemes.instance.apptheme,
          initialRoute: '/',
          onGenerateRoute: Allroutes.instance.ongenerateRoute),
    );
  }
}
