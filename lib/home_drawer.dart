import 'package:flutter/material.dart';

Drawer getHomeDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.blue), 
          accountName: Text('Gabriel Jardine Kikumoto\nRA: 2760841921017'),
          accountEmail: Text('gabrieljkikumoto@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'GK',
              style: TextStyle(fontSize: 30),
              ),
          ),
          currentAccountPictureSize: Size.square(62),
          ),

          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Informações do aluno'),
          )
      ],
    ),
  );
}