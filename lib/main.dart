import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stateful_widget_test/getX/count_screen_with_getX.dart';
import 'package:stateful_widget_test/riverpod/count_screen_width_riverpod.dart';
import 'package:stateful_widget_test/stateful/count_screen_with_stateful.dart';
import 'bloc/count_screen_width_bloc.dart';
import 'bloc/counter_event.dart';

/// 키메라
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CountScreenWidthStateful(),
        // child: CountScreenWidthGetX(),
        // child: CountScreenWidthRiverpod(),
        // child: CountScreenWidthBloc(),
      ),
    );
  }
}




/// ---[ Bloc ]-----------------------------------------------------------------
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'bloc/count_screen_width_bloc.dart';
// import 'bloc/counter_event.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(
//         create: (context) => CounterBloc(),
//         child: CountScreenWidthBloc(),
//       ),
//     );
//   }
// }
/// ----------------------------------------------------------------------------




/// ---[ Riverpod ]-------------------------------------------------------------
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:stateful_widget_test/riverpod/count_screen_width_riverpod.dart';
//
// void main() {
//   runApp(ProviderScope(child: MyApp()));
// }
//
// class MyApp extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return MaterialApp(
//       home: CountScreenWidthRiverpod(),
//     );
//   }
// }
/// ----------------------------------------------------------------------------



/// ---[ GetX ]-----------------------------------------------------------------
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'getX/count_screen_with_getX.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: CountScreenWidthGetX(),
//     );
//   }
// }
/// ----------------------------------------------------------------------------






/// ---[ StatefulWidget ]-----------------------------------------------------
// import 'package:flutter/material.dart';
// import 'stateful/count_screen_with_stateful.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CountScreenWidthStateful(),
//     );
//   }
//}
/// -------------------------------------------------------------------------------