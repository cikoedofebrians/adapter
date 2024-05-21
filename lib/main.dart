import 'package:adapter/model/new_user.dart';
import 'package:adapter/model/old_user.dart';
import 'package:adapter/model/old_user_adapter.dart';
import 'package:adapter/service/user_service.dart';
import 'package:adapter/widget/user_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adapter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final OldUser oldUser = UserService.getOldUser();
    final NewUserInterface oldUserAdapter = OldUserAdapter(oldUser: oldUser);
    final NewUser newUser = UserService.getNewUser();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Adapter"),
      ),
      body: UserList(
        userList: [oldUserAdapter, newUser],
      ),
    );
  }
}
