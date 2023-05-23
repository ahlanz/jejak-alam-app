import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class LangkahCard extends StatefulWidget {
  const LangkahCard({super.key});

  @override
  State<LangkahCard> createState() => _LangkahCardState();
}

class _LangkahCardState extends State<LangkahCard> {
  final List<Map<String, dynamic>> gridMap = [
    {
      'title': '1.Sambungkan\nframe rangka\ntenda',
      'image': 'assets/images/lk1.png',
    },
    {
      'title':
          '2.Dua frame yang\nberbentuk besi\ndengan panjang\nsama dipasang\nmenyilang atau\nmembentuk\nhuruf X',
      'image': 'assets/images/lk2.png',
    },
    {
      'title':
          '3.Masukkan\nrangka\nbesi yang sudah\ntegak ke\nlubang yang\ntersedia di\nujung inner\ntenda',
      'image': 'assets/images/lk3.png',
    },
    {
      'title':
          '4.Tali bagian\nujung\ntengah inner\ntenda\npada persilangan\nkedua frame',
      'image': 'assets/images/lk4.png',
    },
    {
      'title': '5.Pasangkan\nujung\ndari setiap frame\npada pin atau\npenyemat',
      'image': 'assets/images/lk5.png',
    },
    {
      'title':
          '6.memasang\nflysheet\ndiatas inner\ntenda, pada\ntahap ini bisa\ndilakukan\nbersama-sama',
      'image': 'assets/images/lk6.png',
    },
    {
      'title': '7.Kaitkan\nsemua ujung\nflysheet dengan\ntali dan\npasak',
      'image': 'assets/images/lk7.png',
    },
    {
      'title': '8.Tenda berhasil\nberdiri dan\nsiap untuk\ndigunakan',
      'image': 'assets/images/lk8.png',
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
        return Container(
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                '${gridMap.elementAt(index)['image']}',
                width: 120,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '${gridMap.elementAt(index)['title']}',
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: bold,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
