import 'package:flutter/material.dart';
import 'package:makanan_app/theme/style.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(mDefault),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat datang kembali Foodies',
                  style: TitleWelcomeStyle,
                ),
                Text(
                  'Mau makan apa\nSekarang?',
                  style: TitleTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset('assets/orang.png'),
          ),
        ],
      ),
    );
  }
}
