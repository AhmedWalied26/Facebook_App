import 'package:facebook_app/widgets/create_story.dart';
import 'package:facebook_app/widgets/story_list_view.dart';
import 'package:flutter/material.dart';

class CustomStoryItems extends StatelessWidget {
  const CustomStoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView(
        scrollDirection: .horizontal,
        children: [const CreateStory(), StoryListView()],
      ),
    );
  }
}
