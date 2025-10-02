import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:quewie_pos/core/theme/theme.dart';
import 'package:quewie_pos/features/auth/login_page.dart';
import 'package:quewie_pos/features/pos/post_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(QuewieApp());
}

class QuewieApp extends StatefulWidget {
  const QuewieApp({ Key? key }) : super(key: key);

  @override
  _QuewieAppState createState() => _QuewieAppState();
}

class _QuewieAppState extends State<QuewieApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       theme: AppTheme.lightTheme,   // Light theme default
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light, 
      debugShowCheckedModeBanner: false,
      title: 'QUEWIE POS',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/pos', page:()=> PostPage())
      ],
      );
  }
}