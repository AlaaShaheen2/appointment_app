class Item {
  String imgPath;
  String name;

  Item({required this.imgPath, required this.name});
}

final List<Item> items = [
  Item(name: 'Nail', imgPath: "assets/images/services/4.png"),
  Item(name: 'Hair cut', imgPath: "assets/images/services/1.png"),
  Item(name: 'Hair care', imgPath: "assets/images/services/2.png"),
  Item(name: 'Pedicure', imgPath: "assets/images/services/3.png"),
  Item(name: 'Makeup', imgPath: "assets/images/services/5.png"),
  Item(name: 'Facial', imgPath: "assets/images/services/6.png"),
];
