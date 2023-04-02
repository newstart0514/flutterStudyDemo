import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class HeroPage extends StatefulWidget {
  final Map arguments;
  const HeroPage({super.key, required this.arguments});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  late List listData = [];
  late int InitialPage = 0;
  late int currentPage = 0;
  @override
  void initState() {
    super.initState();
    listData = widget.arguments['listData'];
    InitialPage = widget.arguments['InitialPage'];
    currentPage = InitialPage + 1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
            tag: widget.arguments['imageUrl'],
            child: Stack(
              children: [
                Scaffold(
                    backgroundColor: Colors.black,
                    body: Center(
                      child: PhotoViewGallery.builder(
                          pageController:
                              PageController(initialPage: InitialPage),
                          itemCount: listData.length,
                          onPageChanged: (index) {
                            // print(index);
                            setState(() {
                              currentPage = index + 1;
                            });
                          },
                          builder: (context, index) {
                            return PhotoViewGalleryPageOptions(
                                imageProvider:
                                    NetworkImage(listData[index]['imageUrl']));
                          }),
                    )),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 20,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '${currentPage}/${listData.length}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      ),
                    ))
              ],
            )));
  }
}
