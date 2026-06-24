import 'package:facebook_app/widgets/custom_appbar.dart';
import 'package:facebook_app/widgets/custom_story_items.dart';
import 'package:facebook_app/widgets/custom_top_body.dart';
import 'package:facebook_app/widgets/post_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomTopBody(),
              const SizedBox(height: 20),
              const Divider(thickness: 2, color: Color(0xff898F9C)),
              CustomStoryItems(),
              const SizedBox(height: 16),
              PostListView(),
            ],
          ),
        ),
      ),
    );
  }
}
