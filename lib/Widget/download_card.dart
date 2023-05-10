import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class GridDownload extends StatefulWidget {
  const GridDownload({super.key});

  @override
  State<GridDownload> createState() => _GridDownloadState();
}

class _GridDownloadState extends State<GridDownload> {
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
        mainAxisExtent: 180,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryTextColor,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    '${gridMap.elementAt(index)['image']}',
                    width: 100,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Gunung Cikuray',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: extrabold,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Via Pemancar',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Ketinggian 3.078 m',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: light,
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      width: 100,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(5),
                        ),
                        child: const Icon(
                          Icons.navigation,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
