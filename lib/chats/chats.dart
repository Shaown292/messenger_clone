import 'package:flutter/material.dart';
import 'package:messenger_clone/constant/app_text_style.dart';



class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChatScreen extends StatelessWidget {
  final myColor = Color(0xFF0084FF);

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF000000).withOpacity(0.04),
                image: DecorationImage(image: AssetImage("assets/images/camera_icon.png"
                    ""))
              ),
            ),
            SizedBox(width: 10),
            Text("Martha Craig", style: AppTextStyle.textStyle30BlackW400,),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        actions: [
          Icon(Icons.call),
          SizedBox(width: 10),
          Icon(Icons.video_call),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Text("You: My Text 9:30 AM", style: AppTextStyle.textStyle30BlackW400,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12),
              children: [
                // Container(
                // padding: EdgeInsets.all(10),
                //   // width: 200,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Colors.red
                //   ),
                //   child: Text("Hello", style: AppTextStyle.textStyle16BWhiteW400,),
                // ),
                _buildMessage("Do you know what time is it? Do you know what time is it?", false),
                _buildMessage("It’s morning in Tokyo 😎", true),
                Center(child: Text("11:40", style: TextStyle(color: Colors.grey))),
                _buildMessage("What is the most popular meal in Japan?", false),
                _buildMessage("Do you like it?", false),
                _buildMessage("I think top two are:", true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 80,
                      width: 160,
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset('assets/images/image1.png', fit: BoxFit.cover), // Add asset
                          ),
                          Expanded(
                            child: Image.asset('assets/images/image2.png', fit: BoxFit.cover), // Add asset
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildMessage(String text, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        constraints: BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isMe ? myColor : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: TextStyle(color: isMe ? Colors.white : Colors.black87),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        children: [
          Icon(Icons.camera_alt, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Aa",
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.thumb_up, color: Colors.blue),
        ],
      ),
    );
  }
}
