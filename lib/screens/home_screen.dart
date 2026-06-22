import 'package:facebook_app/models/post_model.dart';
import 'package:facebook_app/models/story_model.dart';
import 'package:facebook_app/widgets/create_story.dart';
import 'package:facebook_app/widgets/custom_appbar.dart';
import 'package:facebook_app/widgets/post_item.dart';
import 'package:facebook_app/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<PostModel> postItmes = [
    PostModel(
      title: 'Route',
      date: '8h .',
      userImage: 'assets/images/route_image.png',
      postImage: 'assets/images/route_image_palstain_edited.png',
    ),
    PostModel(
      title: 'ELBALF',
      date: '4h .',
      userImage: 'assets/images/image_1_edited.png',
      postImage: 'assets/images/post_1.png',
    ),
    PostModel(
      title: 'Sara',
      date: '2h .',
      userImage: 'assets/images/image_2_edited.png',
      postImage: 'assets/images/post_2.png',
    ),
    PostModel(
      title: 'Ahmed',
      date: '1h .',
      userImage: 'assets/images/image_3_edited.png',
      postImage: 'assets/images/image3.jpg',
    ),
    PostModel(
      title: 'Nada',
      date: '58m .',
      userImage: 'assets/images/image_4_edited.png',
      postImage: 'assets/images/post_3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 11, top: 18, right: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 21,
                    backgroundImage: AssetImage('assets/images/Messi.jpg'),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What’s in Your Mind?',
                        hintStyle: TextStyle(
                          color: Color(0xff898F9C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter_18pt-Bold',
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Image.asset('assets/images/image_icon.png', height: 30),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 2, color: Color(0xff898F9C)),
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: .horizontal,
                children: [
                  const CreateStory(),
                  StoryItem(
                    item: StoryModel(
                      storyImage: 'assets/images/image1.jpg',
                      userStoryImage: 'assets/images/model1.jpg',
                    ),
                  ),
                  StoryItem(
                    item: StoryModel(
                      storyImage: 'assets/images/image2.jpg',
                      userStoryImage: 'assets/images/model2.jpg',
                    ),
                  ),
                  StoryItem(
                    item: StoryModel(
                      storyImage: 'assets/images/image3.jpg',
                      userStoryImage: 'assets/images/model3.jpg',
                    ),
                  ),
                  StoryItem(
                    item: StoryModel(
                      storyImage: 'assets/images/image4.jpg',
                      userStoryImage: 'assets/images/model4.jpg',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: postItmes.length,
              itemBuilder: (context, index) {
                return PostItem(item: postItmes[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
