import 'package:amazone_clone_ui/utils/const.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mainAdd extends StatelessWidget {
  const mainAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: largeAds.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(largeAds[index]))),
            child: const Positioned(
              bottom: 10,
              right: 10,
              child: Row(children: [
                Text(
                  'Explore more',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 30,
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
