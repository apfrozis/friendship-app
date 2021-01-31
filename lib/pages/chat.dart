import 'package:flutter/material.dart';
import 'package:friendship_app/models/chatUsersModel.dart';
import 'package:friendship_app/widgets/conversationList.dart';

class Chat extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<Chat> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Music Group",
        messageText: "Listen to this bass",
        imageURL: "images/userImage1.jpg",
        time: "Now"),
    ChatUsers(
        name: "Book Club",
        messageText: "Harry Potter's books are awesome!",
        imageURL: "images/userImage2.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Footballers",
        messageText: "Hey where are you?",
        imageURL: "images/userImage3.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Kitchen's Hello!",
        messageText: "This was the best dish eveeeer",
        imageURL: "images/userImage4.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "PS5 all the way!!",
        messageText: "Thank you, It's awesome",
        imageURL: "images/userImage5.jpg",
        time: "23 Mar"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
