import 'package:financial_helper_app/router/router.dart';
import 'package:flutter/material.dart';

class FinancialHelperApp extends StatelessWidget {
  FinancialHelperApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Poppins'),
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
