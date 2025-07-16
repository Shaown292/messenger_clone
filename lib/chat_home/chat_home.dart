import 'package:flutter/material.dart';
import 'package:messenger_clone/common_widgets/custom_text_field.dart';
import 'package:messenger_clone/constant/app_text_style.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomTextFormField(
              inputDecoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF000000).withOpacity(0.05),
                  focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.transparent,
                   ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.search, color: Color(0xFF8E8E93),size: 24,),
                hintText: "Search",
                hintStyle: AppTextStyle.textStyle17GreyW400
              ),
            ),
          ),
        Row(
          children: [
            Container(
              height: 100,
              width:  100,
              // margin: EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Color(0xFF0000000),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile_pic.png'),
                    fit: BoxFit.contain
                ),
              ),
              // decoration: ,
            ),
            SizedBox(
            height: 60, // Set a fixed height for horizontal list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return    Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width:  100,
                      // margin: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Color(0xFF0000000),
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile_pic.png'),
                          fit: BoxFit.contain
                        ),
                      ),
                      // decoration: ,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 15,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,  // Green status indicator
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),


                  ],
                );
              },
            ),
                  ),
          ],
        ),

      ],
      ),
    );
  }
}
