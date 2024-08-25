import 'package:flutter/material.dart';
import './widgets/user_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: UsersList());
  }
}

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List<Map<String, String>> users = [
    {
      "id": "user1",
      "name": "John Doe",
      "phoneNumber": "+1-324-546-3212",
      "imageURL":
          "https://plus.unsplash.com/premium_photo-1680020185326-45491267f8da?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "id": "user2",
      "name": "John Doe 2",
      "phoneNumber": "+1-324-546-3212",
      "imageURL":
          "https://plus.unsplash.com/premium_photo-1680020185326-45491267f8da?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "id": "user3",
      "name": "John Doe 3",
      "phoneNumber": "+1-324-546-3212",
      "imageURL":
          "https://plus.unsplash.com/premium_photo-1680020185326-45491267f8da?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "id": "user4",
      "name": "John Doe 4",
      "phoneNumber": "+1-324-546-3212",
      "imageURL":
          "https://plus.unsplash.com/premium_photo-1680020185326-45491267f8da?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    }
  ];

  void onDeleteUser(String userID) {
    setState(() {
      users.removeWhere((user) => user["id"] == userID);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Users",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              itemExtent: 90,
              children: users
                  .map((user) => UserCard(
                      user: user,
                      onDeleteUser: () => onDeleteUser(user["id"]!)))
                  .toList(),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
    );
  }
}
