import 'package:flutter/material.dart';
import 'package:user_list/pages/person_page.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<Map<String, String>> userList = [
    {
      "userId": "user1",
      "userImgUrl":
          "https://images.pexels.com/photos/2422290/pexels-photo-2422290.jpeg?cs=srgb&dl=pexels-jopwell-2422290.jpg&fm=jpg",
      "userName": "Johongir Jorayv",
      "userPhoneNumber": "+998974549333",
    },
    {
      "userId": "user2",
      "userImgUrl":
          "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "userName": "Hojiakbar Sherhojiyv",
      "userPhoneNumber": "+998946626262",
    },
    {
      "userId": "user3",
      "userImgUrl":
          "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "userName": "Samanar Aliyv",
      "userPhoneNumber": "+998991234567",
    },
    {
      "userId": "user4",
      "userImgUrl":
          "https://img.freepik.com/free-photo/happiness-wellbeing-confidence-concept-cheerful-attractive-african-american-woman-curly-haircut-cross-arms-chest-self-assured-powerful-pose-smiling-determined-wear-yellow-sweater_176420-35063.jpg",
      "userName": "Nodira Polvonova",
      "userPhoneNumber": "+998987771234",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "User List",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: ListView(itemExtent: 80, children: [
                ...userList.map((element) {
                  return PersonPage(
                    userId: element["userId"]!,
                    userImgUrl: element["userImgUrl"]!,
                    userName: element["userName"]!,
                    userPhoneNumber: element["userPhoneNumber"]!,
                    helper: deleteFunction,
                  );
                }).toList(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  void deleteFunction(String userId) {
    setState(() {
      userList.removeWhere((element) => element["userId"] == userId);
    });
  }
}
