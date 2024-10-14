import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class ImageSlider extends StatefulWidget {
  final List<String>? images;

  const ImageSlider({super.key, this.images});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late List<String>? images;
  int _currentPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    images = widget.images;
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: images!
              .map(
                (image) => Container(
                  width: MediaQuery.of(context).size.height * 1,
                  height: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            color: Colors.white,
            child: Text(
              '${_currentPageIndex + 1}/${images!.length}',
              style: const TextStyle(
                fontSize: 16
              ),
            ),
          ),
        )
      ],
    );
  }
}
