import 'package:amazone_clone_ui/utils/images.dart';
import 'package:flutter/material.dart';

class offerListView extends StatefulWidget {
  const offerListView({super.key});

  @override
  State<offerListView> createState() => _offerListViewState();
}

class _offerListViewState extends State<offerListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Minimum 30% OFF',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: offerImage.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 120,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 50,
                      width: 50,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(offerImage[index])),
                          Text(offerItems[index])
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
