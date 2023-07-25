import 'package:flutter/material.dart';
import 'package:randomuser/services/api.dart';
import '../models/user.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUsers(500),
        builder: ((context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<User> users = snapshot.data!;

          return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(users[index].smallImage),
                    child: Text(index.toString()),
                  ),
                  title: Text(users[index].firstName),
                  subtitle: Text(users[index].email),
                );
              });
        }),
      ),
    );
  }
}
