import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final Map<String, String> user;
  final Function() onDeleteUser;

  UserCard({required this.user, required this.onDeleteUser});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                user["imageURL"]!,
              ),
            ),
            title: Text(
              user["name"]!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(user["phoneNumber"]!),
            trailing: IconButton(
              onPressed: onDeleteUser,
              icon: const Icon(Icons.delete, color: Colors.red, size: 30),
            ),
          ),
        ));
  }
}
