import 'package:flutter/material.dart';
import 'package:lista_usuario/components/user_tile.dart';
import 'package:lista_usuario/provider/users.dart';
import 'package:provider/provider.dart';
import 'package:lista_usuario/models/user.dart';




class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    final Users users = Provider.of(context) ;
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text('Lista de Usuários',
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
             
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i ) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
