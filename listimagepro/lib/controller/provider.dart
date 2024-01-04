import 'package:flutter/material.dart';

class ViewImage extends ChangeNotifier {
  List<String> selectedImage = [];
  List imgs = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/800px-Shaqi_jrvej.jpg",
    "https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=900&t=st=1704360410~exp=1704361010~hmac=9d98d6fce780b1634e3fc491a5e2320fa83cd540e2c9b1f4a58f4f48e362f42b",
    "https://images.unsplash.com/photo-1607992922515-7e38329e65d4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww",
    "https://nt.global.ssl.fastly.net/binaries/content/gallery/website/national/library/our-cause/on-the-shore-borrowdale-and-derwent-water-1518851.jpg",
    "https://d19h8kn98xvxar.cloudfront.net/images/_hero/connectwithnature.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqEE35c9UpZb20a5NQooegPH8RTv_hRNqRJg&usqp=CAU",
  ];
  //
  void add(index) {
    selectedImage.add(imgs[index]);
    notifyListeners();
  }

  void delete(index) {
    selectedImage.removeAt(index);
    notifyListeners();
  }
}
