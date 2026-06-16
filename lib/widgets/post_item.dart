import 'package:facebook_app/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostItem extends StatelessWidget {
  final PostModel item;
  const PostItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xff000000)),
        ),
      ),
      height: 412,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Image.asset(item.userImage),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Color(0xff242527),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          Text(
                            item.date,
                            style: TextStyle(
                              color: Color(0xff898F9C),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.public,
                            size: 14,
                            color: Color(0xff898F9C),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 270),
              Icon(Icons.more_horiz, color: Color(0xff242527), size: 32),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              height: 270,
              width: .infinity,
              child: Image.asset(item.postImage, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 22),
            child: Row(
              children: [
                Icon(Icons.favorite_border, size: 28, color: Colors.black),
                SizedBox(width: 8),
                Icon(Icons.sms_outlined, size: 28, color: Colors.black),
                SizedBox(width: 8),
                FaIcon(
                  FontAwesomeIcons.paperPlane,
                  size: 22,
                  color: Colors.black,
                ),
                SizedBox(width: 290),
                Icon(Icons.bookmark_outline, color: Colors.black, size: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
