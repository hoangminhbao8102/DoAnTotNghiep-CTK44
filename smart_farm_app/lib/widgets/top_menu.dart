import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopMenuTiles extends StatefulWidget {
  String name;
  String imageUrl;
  String slug;

  TopMenuTiles({super.key, 
    required this.name, 
    required this.imageUrl, 
    required this.slug});

  @override
  State<TopMenuTiles> createState() => _TopMenuTilesState();
}

class _TopMenuTilesState extends State<TopMenuTiles> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Column(  
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(
              boxShadow: [
              BoxShadow(
                color: Color(0xFFFae3e2),
                blurRadius: 25,
                offset: Offset(0.0, 0.75),
                ),
              ],
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                ),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 50,
              height: 50,
              child: Center(
                child: Image.asset(
                  'assets/${widget.imageUrl}.png',
                  width: 24,
                  height: 24,
                  ),
              ),
            ),
            ),
          ),
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6e6e71),
            ),
          )
        ],
      ),
    );
  }
}

class TopMenus extends StatelessWidget {
  const TopMenus({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopMenuTiles(name: "Feed Cal", imageUrl: "imageUrl", slug: "slug"),
        ],
      ),
    );
  }
}