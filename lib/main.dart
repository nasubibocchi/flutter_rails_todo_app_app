import 'package:flutter/material.dart';
import 'package:flutter_rails_todo_app/app_config.dart';
import 'package:flutter_rails_todo_app/presentation/todo_list/todo_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.load()
      .then((_) => runApp(const ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListPage(title: 'Todo List Page'),
    );
  }
}
