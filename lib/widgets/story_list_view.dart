import 'package:facebook_app/models/story_model.dart';
import 'package:facebook_app/widgets/story_item.dart';
import 'package:flutter/material.dart';

class StoryListView extends StatelessWidget {
  StoryListView({super.key});

  final List<StoryModel> storyItems = [
    StoryModel(
      storyImage: 'assets/images/image1.jpg',
      userStoryImage: 'assets/images/model1.jpg',
    ),
    StoryModel(
      storyImage: 'assets/images/image2.jpg',
      userStoryImage: 'assets/images/model2.jpg',
    ),
    StoryModel(
      storyImage: 'assets/images/image3.jpg',
      userStoryImage: 'assets/images/model3.jpg',
    ),
    StoryModel(
      storyImage: 'assets/images/image4.jpg',
      userStoryImage: 'assets/images/model4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: .horizontal,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: storyItems.length,
      itemBuilder: (_, index) => StoryItem(item: storyItems[index]),
    );
  }
}
