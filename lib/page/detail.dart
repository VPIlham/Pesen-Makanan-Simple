import 'package:flutter/material.dart';

import 'package:makanan_app/models/makanan.dart';
import 'package:makanan_app/page/widgets/pesan.dart';
import 'package:makanan_app/theme/style.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;

  DetailPage(this.makanan);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Image.asset(
                  makanan.img,
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: mDefault),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            makanan.nama,
                            style: TitleTextStyle,
                          ),
                          Text(
                            'Rp ${makanan.harga}',
                            style: labelStyle.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(makanan.desc),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pesan',
                        style: TitleTextStyle,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      PesanPage(makanan: makanan),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
