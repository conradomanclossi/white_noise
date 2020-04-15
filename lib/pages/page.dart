import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:white_noise/pages/items/big_box.dart';
import 'package:white_noise/pages/items/small_items.dart';
import 'controllers/controller.dart';

class Pages extends StatelessWidget {
  final String classElement;

  const Pages(this.classElement, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    var bookmark = controller.bookmarksSongs.where((element) {
      return element.classElement.toLowerCase() == classElement.toLowerCase();
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Observer(builder: (_) {
          return bookmark.isNotEmpty ? BigBox(song: bookmark.single) : Text("");
        }),
        SizedBox(
          width: 300,
          height: 500,
          child: ListView.builder(
            padding: EdgeInsets.only(top: bookmark.isNotEmpty ? 10 : 50),
            itemCount: controller.filterSongForClass(classElement).length,
            itemBuilder: (BuildContext context, int index) {
              return SmallItems(
                song: controller.filterSongForClass(classElement)[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
