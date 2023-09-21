import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockflow/src/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'StockFlow',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage())
      ],
      navigatorKey: Get.key,
    );
  }
}
