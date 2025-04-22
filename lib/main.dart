import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtech_task_flutter/core/usecases/get_product_use_case.dart';

import 'core/di/di.dart';
import 'features/product/presentation/bloc/product_bloc.dart';
import 'features/product/presentation/bloc/product_event.dart';
import 'features/product/presentation/pages/product_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await diInit();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QTech Task Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => ProductBloc(GetProductUseCase(di()))
          ..add(const ProductEvent.fetchInitial()),
        child: ProductPage(),
      ),
    );
  }
}
