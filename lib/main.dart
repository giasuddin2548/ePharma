import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'businessLogicLayer/all_bindings.dart';
import 'myUtils/app_constant.dart';
import 'myUtils/generated_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Pharma',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      smartManagement: SmartManagement.full,
      initialBinding: AllBindings(),
      onGenerateRoute: GeneratedRoute.onGeneratedRoute,
      initialRoute: AppConstant.homeRoute,
    );
  }
}

