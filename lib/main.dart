import 'package:flutter/material.dart';
import 'package:lista_usuario/provider/users.dart';
import 'package:lista_usuario/routes/app_routes.dart';
import 'package:lista_usuario/views/user_form.dart';
import 'package:lista_usuario/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return MultiProvider(providers: [
        ChangeNotifierProvider(
        create: (ctx) => new Users(),

    )

    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AppRoutes.HOME: (_) => UserList(),
        AppRoutes.USER_FORM:(_) => UserForm()
      },
    ),
    );

  }
}

