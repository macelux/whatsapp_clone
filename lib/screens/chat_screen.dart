import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Divider(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[index].avataeUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    Text(
                      dummyData[index].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(dummyData[index].message,
                      style: TextStyle(fontSize: 15)),
                ),
              )
            ],
          );
        });
  }
}
