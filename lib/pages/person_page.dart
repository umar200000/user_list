import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  final String userId;
  final String userImgUrl;
  final String userName;
  final String userPhoneNumber;
  final void Function(String id) helper;

  const PersonPage({
    super.key,
    required this.userId,
    required this.userImgUrl,
    required this.userName,
    required this.userPhoneNumber,
    required this.helper,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(userImgUrl),
        ),
        title: Text(
          userName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(userPhoneNumber),
        trailing: IconButton(
          onPressed: () {
            helper(userId);
          },
          icon: const Icon(
            Icons.delete,
            size: 25,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
