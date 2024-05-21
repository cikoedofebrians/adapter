import 'package:adapter/model/new_user.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({
    super.key,
    required this.userList,
  });

  final List<NewUserInterface> userList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: userList.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) => ListTile(
        title: Text(userList[index].sayFirstName()),
        subtitle: Text(userList[index].isOnBirthday()
            ? "Sedang berulang tahun!"
            : "Tidak sedang berulang tahun."),
        trailing: const CircleAvatar(
          child: Icon(
            Icons.person,
          ),
        ),
      ),
    );
  }
}
