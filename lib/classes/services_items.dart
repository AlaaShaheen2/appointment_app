class Item {
  String imgPath;
  String name;

  Item({required this.imgPath, required this.name});
}

final List<Item> items = [
  Item(name: 'Nail', imgPath: "assets/images/services/9.png"),
  Item(name: 'Hair cut', imgPath: "assets/images/services/12.png"),
  Item(name: 'Hair care', imgPath: "assets/images/services/10.png"),
  Item(name: 'Pedicure', imgPath: "assets/images/services/14.png"),
  Item(name: 'Makeup', imgPath: "assets/images/services/11.png"),
  Item(name: 'Facial', imgPath: "assets/images/services/13.png"),
];
