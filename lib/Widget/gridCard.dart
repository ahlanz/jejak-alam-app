import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class GridCard extends StatefulWidget {
  const GridCard({super.key});

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  final List<Map<String, dynamic>> gridMap = [
    {
      'title': 'Gunung Ciremai',
      'subTitle': 'Ketinggian 3.078 m',
      'image': 'assets/images/gunung.jpg',
    },
    {
      'title': 'Gunung Cikuray',
      'subTitle': 'Ketinggian 2.821 m ',
      'image': 'assets/images/gunung.jpg',
    },
    {
      'title': 'Gunung Putri Lembang',
      'subTitle': 'Ketinggian 1.587 m',
      'image': 'assets/images/gunung.jpg',
    },
    {
      'title': 'Gunung Bogor',
      'subTitle': 'Ketinggian 1.237 m',
      'image': 'assets/images/gunung.jpg',
    },
    {
      'title': 'Gunung Indah',
      'subTitle': 'Ketinggian 7.587 m',
      'image': 'assets/images/gunung.jpg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 15.0,
        mainAxisExtent: 140,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            height: 125,
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: bgcolor1,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: Image.asset(
                        '${gridMap.elementAt(index)['image']}',
                        width: double.infinity,
                        height: 93,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 46.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                            color: bgcolor1,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.download),
                            color: bgcolor1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Text(
                    '${gridMap.elementAt(index)['title']}',
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Text(
                    '${gridMap.elementAt(index)['subTitle']}',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: light,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
