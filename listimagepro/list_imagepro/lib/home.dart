import 'package:flutter/material.dart';
import 'package:list_imagepro/newpage.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List imgs = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/800px-Shaqi_jrvej.jpg",
    "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1704360410~exp=1704361010~hmac=9d98d6fce780b1634e3fc491a5e2320fa83cd540e2c9b1f4a58f4f48e362f42b",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/800px-Shaqi_jrvej.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/800px-Shaqi_jrvej.jpg",
    "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1704360410~exp=1704361010~hmac=9d98d6fce780b1634e3fc491a5e2320fa83cd540e2c9b1f4a58f4f48e362f42b",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/800px-Shaqi_jrvej.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of items in each row
          // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        itemCount: imgs.length, // total number of items
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ViewImagePge(imageUrl: imgs[index]),
              ));
            },
            child: Center(
              child: Image.network(
                imgs[index],
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
