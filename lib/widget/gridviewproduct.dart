import 'package:amazone_clone_ui/utils/images.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class productGridView extends StatefulWidget {
  // productGridView(
  //  {super.key, required this.productImage, required this.productName});

  @override
  State<productGridView> createState() => _productGridViewState();
}

class _productGridViewState extends State<productGridView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: MediaQuery.of(context).size.height * .7,
        width: double.infinity,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: offerItems.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                height: MediaQuery.of(context).size.height * .45,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.network(offerImage[index])),
                    Text(offerItems[index]),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
