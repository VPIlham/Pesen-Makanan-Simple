import 'package:flutter/material.dart';
import 'package:makanan_app/models/testimoni.dart';
import 'package:makanan_app/page/detail.dart';
import 'package:makanan_app/theme/style.dart';

class TestimoniWidget extends StatelessWidget {
  final testimoni = Testimoni.generateListTestimoni();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: mDefault),
          child: Text(
            'Testimoni',
            style: TitleTextStyle.copyWith(fontSize: 16),
          ),
        ),
        Container(
          height: 400,
          margin: EdgeInsets.symmetric(horizontal: mDefault),
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            separatorBuilder: (_, index) => SizedBox(
              height: 5,
            ),
            itemCount: testimoni.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                padding: EdgeInsets.all(10),
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
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        testimoni[index].img,
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          testimoni[index].nama,
                          style: TitleTextStyle.copyWith(fontSize: 12),
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            testimoni[index].desc,
                            maxLines: 4,
                            style: TextStyle(
                                fontSize: 10, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
