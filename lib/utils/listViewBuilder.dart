import 'package:arcore_example/views/objectgesturesexample.dart';
import 'package:flutter/material.dart';

import '../widgets/furniture_tile.dart';

class ListviewBuilder extends StatelessWidget {
  final List itemlength;
  final List itemName;
  final List itemType;
  final String modelLink;
  const ListviewBuilder(
      {Key? key,
      required this.itemlength,
      required this.itemName,
      required this.itemType,
      required this.modelLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemlength.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return FurnitureTiles(
          funitureName: itemName[index],
          furnitureImagePath: itemType.elementAt(index),
          iconButton: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ObjectGesturesWidget(
                            modelLink: modelLink[index],
                          )));
            },
            icon: Icon(Icons.camera_enhance_rounded),
          ),
        );
      },
    );
  }
}
