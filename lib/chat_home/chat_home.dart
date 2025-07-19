import 'package:flutter/material.dart';
import 'package:messenger_clone/common_widgets/custom_text_field.dart';
import 'package:messenger_clone/constant/app_text_style.dart';

class ChatHome extends StatelessWidget {
  final List<Map<String, dynamic>> chatData = [
    {
      'image': 'assets/images/chat1.png',
      'name': 'Martin Randolph',
      'text': "What's up man?",
      'time': '10:30 AM',
      'isSeen': true,
      'isMe': false,
    },
    {
      'image': 'assets/images/chat2.png',
      'name': 'Andrew Parker',
      'text': 'I\'m good, thanks! How about you?',
      'time': '10:32 AM',
      'isSeen': true,
      'isMe': true,
    },
    {
      'image': 'assets/images/chat3.png',
      'name': 'Karen Castillo',
      'text': 'Doing well, thanks for asking.',
      'time': '10:33 AM',
      'isSeen': false,
      'isMe': false,
    }, {
      'image': 'assets/images/chat1.png',
      'name': 'Martin Randolph',
      'text': "What's up man?",
      'time': '10:30 AM',
      'isSeen': true,
      'isMe': false,
    },
    {
      'image': 'assets/images/chat2.png',
      'name': 'Andrew Parker',
      'text': 'I\'m good, thanks! How about you?',
      'time': '10:32 AM',
      'isSeen': true,
      'isMe': true,
    },
    {
      'image': 'assets/images/chat3.png',
      'name': 'Karen Castillo',
      'text': 'Doing well, thanks for asking.',
      'time': '10:33 AM',
      'isSeen': false,
      'isMe': false,
    }, {
      'image': 'assets/images/chat1.png',
      'name': 'Martin Randolph',
      'text': "What's up man?",
      'time': '10:30 AM',
      'isSeen': true,
      'isMe': false,
    },
    {
      'image': 'assets/images/chat2.png',
      'name': 'Andrew Parker',
      'text': 'I\'m good, thanks! How about you?',
      'time': '10:32 AM',
      'isSeen': true,
      'isMe': true,
    },
    {
      'image': 'assets/images/chat3.png',
      'name': 'Karen Castillo',
      'text': 'Doing well, thanks for asking.',
      'time': '10:33 AM',
      'isSeen': false,
      'isMe': false,
    },
  ];

  final List<Map<String, String>> story = [
    {'name': 'Joshua', 'image': 'assets/images/story1.png'},
    {'name': 'Martin', 'image': 'assets/images/story2.png'},
    {'name': 'Karen', 'image': 'assets/images/story3.png'},
    {'name': 'Martha', 'image': 'assets/images/chat4.png'},
    {'name': 'Joshua', 'image': 'assets/images/story1.png'},
    {'name': 'Martin', 'image': 'assets/images/story2.png'},
    {'name': 'Karen', 'image': 'assets/images/story3.png'},
    {'name': 'Martha', 'image': 'assets/images/chat4.png'},
  ];

  ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/profile_pic.png'),
            ),
          ),
          // decoration: ,
        ),
        title: Text("Chats", style: AppTextStyle.textStyle30BlackW400),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Color(0xFF0000000),
              image: DecorationImage(
                image: AssetImage('assets/images/camera_icon.png'),
              ),
            ),
            // decoration: ,
          ),
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Color(0xFF0000000),
              image: DecorationImage(
                image: AssetImage('assets/images/new_message.png'),
              ),
            ),
            // decoration: ,
          ),
        ],
      ),
      body: Column(
        children: [
          /// Search
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomTextFormField(
              inputDecoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF000000).withOpacity(0.05),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF8E8E93),
                  size: 24,
                ),
                hintText: "Search",
                hintStyle: AppTextStyle.textStyle17GreyW400,
              ),
            ),
          ),

          /// Stories
          Row(
            children: [
              SizedBox(
                height: 90,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsetsGeometry.only(left: 20),
                      height: 52,
                      width: 52,
                      // margin: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF000000).withOpacity(0.04),
                      ),
                      child: Image.asset("assets/images/add.png"),
                      // decoration: ,
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Your story",
                        style: AppTextStyle.textStyle17GreyW400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                height: 90,
                width: width - 130, // Set a fixed height for horizontal list
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    final stories = story[index];
                    return Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 52,
                              width: 52,

                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Color(0xFF0000000),
                                image: DecorationImage(
                                  image: AssetImage('${stories["image"]}'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              // decoration: ,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green, // Green status indicator
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          stories['name'].toString(),
                          style: AppTextStyle.textStyle17GreyW400,
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 28);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          /// Chat
          Expanded(
            child: ListView.separated(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                final chat = chatData[index];
                return ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Color(0xFF0000000),
                      image: DecorationImage(
                        image: AssetImage(chat['image'].toString()),
                        fit: BoxFit.contain,
                      ),
                    ),
                    // decoration: ,
                  ),
                  title: Text(
                    chat['name'].toString(),
                    style: AppTextStyle.textStyleBlack17W500,
                  ),
                  subtitle: Row(
                    children: [
                      Container(
                  constraints: BoxConstraints(
                    maxWidth: width * 0.4
                  ) ,
                        child: Text(
                          chat['text'].toString(),
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.textStyleGrey14W400,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        chat['time'].toString(),
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: Icon(
                   chat["isSeen"] ? Icons.check_circle_outline : Icons.circle_outlined,
                    color: Color(0xFFC2C6CC),
                    size: 16,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 20);
              },
            ),
          ),
        ],
      ),
    );
  }
}
