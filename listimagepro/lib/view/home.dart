import 'package:flutter/material.dart';
import 'package:pro/controller/provider.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ViewImage>(
        builder: (context, pro, child) => Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // number of items in each row
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                itemCount: pro.imgs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   selectedImage.add(imgs[index]);
                      // });
                      pro.add(index);
                    },
                    child: Center(
                      child: Image.network(
                        pro.imgs[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: pro.selectedImage.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: GestureDetector(
                    onLongPress: () {
                      pro.delete(index);
                    },
                    child: Image.network(
                      pro.selectedImage[index],
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
