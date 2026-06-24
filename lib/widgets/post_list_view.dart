import 'package:facebook_app/models/post_model.dart';
import 'package:facebook_app/widgets/post_item.dart';
import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  PostListView({super.key});

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
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: postItmes.length,
      itemBuilder: (context, index) {
        return PostItem(item: postItmes[index]);
      },
    );
  }
}
