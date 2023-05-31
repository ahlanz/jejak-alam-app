import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class CardSlider extends StatefulWidget {
  @override
  _CardSliderState createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _cards = [
      Card(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/materi-panduan');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 15,
            ),
            width: 310,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff43FF61),
            ),
            child: Text(
              'Materi \nPanduan \npendakian',
              style: cardTextStyle.copyWith(
                fontSize: 25,
                fontWeight: extrabold,
              ),
            ),
          ),
        ),
      ),
      Card(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 15,
          ),
          width: 310,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff83DBE5),
          ),
          child: Text(
            'Perkiraan \ncuaca',
            style: cardTextStyle.copyWith(
              fontSize: 25,
              fontWeight: extrabold,
            ),
          ),
        ),
      ),
      Card(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 15,
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: primaryColor,
          ),
          child: Text(
            'Rekomendasi \nToko Alat \nsewa',
            style: cardTextStyle.copyWith(
              fontSize: 25,
              fontWeight: extrabold,
            ),
          ),
        ),
      ),
    ];
    return SizedBox(
      height: 150,
      child: PageView.builder(
        controller: _pageController,
        itemCount: _cards.length,
        itemBuilder: (BuildContext context, int index) {
          return Transform.scale(
            scale: index == _currentIndex ? 1 : 0.9,
            child: _cards[index],
          );
        },
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
