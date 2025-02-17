import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/henock.jpg",
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              Text(" Auteur : Henock Lungele")
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.attach_file),
                SizedBox(
                  width: 20,
                ),
                Text("Telecharger le document"),
              ],
            ),
          ),
          Text(
              "synthese : A native android application using Flutter is th subject of this article"),
        ],
      ),
    );
  }
}
