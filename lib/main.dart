import 'package:cadastro/provider/users.dart';
import 'package:cadastro/routes/app_routes.dart';
import 'package:cadastro/views/user_form.dart';
import 'package:cadastro/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => UsersProvider(),
      child: MaterialApp(
        title: 'Cadastro',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}
