import 'package:appointment_app/widgets/constant.dart';
import 'package:flutter/material.dart';

import '../classes/services_items.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: GridTile(
              child: Stack(children: [
                Positioned(
                  top: -2,
                  bottom: -6,
                  right: 0,
                  left: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image.asset(
                      items[index].imgPath,
                    ),
                  ),
                ),
              ]),
              footer: Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    items[index].name,
                    style: TextStyle(
                      color: Color.fromARGB(255, 253, 238, 249),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      const Color.fromARGB(255, 214, 174, 174).withOpacity(0.0),
                      Color.fromARGB(255, 146, 97, 127),
                      Color.fromARGB(255, 223, 158, 177),
                    ],
                    stops: [
                      0.0,
                      0.5,
                      0.8,
                    ],
                  ),
                ),
              ),
              // footer: GridTileBar(
              //   backgroundColor: Color.fromARGB(66, 73, 127, 110),
              //   title: Center(
              //     child: Text(
              //       items[index].name,
              //       style: TextStyle(
              //         color: Color.fromARGB(255, 112, 61, 98),
              //         fontWeight: FontWeight.bold,
              //         fontSize: 18,
              //       ),
              //     ),
              //   ),
              // ),
            ),
          );
        });
  }
}
