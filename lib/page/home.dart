import 'package:flutter/material.dart';
import 'package:makanan_app/page/widgets/header.dart';
import 'package:makanan_app/page/widgets/makanan.dart';
import 'package:makanan_app/page/widgets/testimoni.dart';
import 'package:makanan_app/theme/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffEDEDED),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                HeaderPage(),
                SizedBox(
                  height: 10,
                ),
                MakananWidget(),
                SizedBox(
                  height: 10,
                ),
                TestimoniWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
