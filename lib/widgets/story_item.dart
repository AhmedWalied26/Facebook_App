import 'package:facebook_app/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final StoryModel item;
  const StoryItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Stack(
        fit: .passthrough,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            margin: EdgeInsets.only(right: 12, top: 16, bottom: 16),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(item.storyImage, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 22,
            left: 5,
            child: CircleAvatar(
              backgroundColor: Color(0xff1877F2),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(item.userStoryImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
