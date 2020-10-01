import 'package:cadastro/components/user_title.dart';
import 'package:cadastro/models/user.dart';
import 'package:cadastro/provider/users.dart';
import 'package:cadastro/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuários'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        ));
  }
}
