import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 45);

  final List<String> tabIcons = [
    'assets/images/home_icon.png',
    'assets/images/videos_icon.png',
    'assets/images/store_icon.png',
    'assets/images/profile_icon.png',
    'assets/images/notification_icon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Facebook',
        style: TextStyle(
          color: Color(0xff1877F2),
          fontSize: 34,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inter_18pt-Bold',
        ),
      ),
      actions: [
        Icon(Icons.add_circle, size: 30, color: Colors.black),
        SizedBox(width: 12),
        Icon(Icons.search, size: 32, color: Colors.black),
        SizedBox(width: 12),
        FaIcon(
          FontAwesomeIcons.facebookMessenger,
          size: 26,
          color: Colors.black,
        ),
        SizedBox(width: 20),
      ],
      bottom: TabBar(
        indicatorColor: Color(0xff1877F2),
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Color(0xff1877F2),
        unselectedLabelColor: Color(0xff898F9C),
        tabs: [
          ...tabIcons.map(
            (path) => Tab(child: ImageIcon(AssetImage(path), size: 28)),
          ),
          Tab(
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/Messi.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
