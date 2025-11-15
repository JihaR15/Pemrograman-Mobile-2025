import 'package:flutter/material.dart';
import './views/plan_screen.dart';
import './provider/plan_provider.dart';
import './models/data_layer.dart';
import './views/plan_creator_screen.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   theme: ThemeData(
    //     useMaterial3: true,
    //     colorSchemeSeed: Colors.purple,
    //     appBarTheme: AppBarTheme(
    //       backgroundColor: Colors.purple,
    //       foregroundColor: Colors.white,
    //     ),
    //     floatingActionButtonTheme: FloatingActionButtonThemeData(
    //       shape: const CircleBorder(),
    //       backgroundColor: Colors.purple,
    //       foregroundColor: Colors.white,
    //     ),
    //   ),
    //   home: PlanProvider(
    //     notifier: ValueNotifier<Plan>(const Plan()),
    //     child: const PlanScreen(),
    //   ),
    // );
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(
        platform: TargetPlatform.iOS,
          useMaterial3: true,
          colorSchemeSeed: Colors.purple,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            shape: const CircleBorder(),
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),
        ),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
