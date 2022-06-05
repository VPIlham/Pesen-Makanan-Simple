import 'package:flutter/material.dart';
import 'package:makanan_app/models/makanan.dart';
import 'package:makanan_app/page/detail.dart';
import 'package:makanan_app/theme/style.dart';

class MakananWidget extends StatelessWidget {
  final makanan = Makanan.generateListMakanan();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: mDefault),
          child: Text(
            'Menu Makanan',
            style: TitleTextStyle.copyWith(fontSize: 16),
          ),
        ),
        Container(
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: mDefault),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, index) => SizedBox(
              width: 5,
            ),
            itemCount: makanan.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(makanan[index]),
                    ),
                  );
                },
                child: Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.12),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        makanan[index].img,
                        width: 180,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                      Center(
                        child: Text(
                          makanan[index].nama,
                          style: labelStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Rp.${makanan[index].harga.toString()}',
                          style:
                              labelStyle.copyWith(fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
