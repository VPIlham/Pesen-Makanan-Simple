import 'package:flutter/material.dart';
import 'package:makanan_app/models/makanan.dart';
import 'package:makanan_app/theme/style.dart';

class InvoicePage extends StatelessWidget {
  final Makanan makanan;
  final total;
  final lvl;
  final qty;
  final catatan;

  InvoicePage(this.makanan, this.total, this.lvl, this.qty, [this.catatan]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 330,
                margin: EdgeInsets.only(top: 20),
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
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Pembelian',
                          style: TitleTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nama Makanan : '),
                          Container(child: Text(makanan.nama)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lvl Pedas : '),
                          Text('Lvl ${lvl.toString()}'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Harga Makanan : '),
                          Text('Rp. ${makanan.harga.toString()}'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Qty : '),
                          Text('5'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Catatan : '),
                          Text(catatan == '' ? '-' : catatan),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Pembayaran : '),
                          Text(
                            'Rp. ${total.toString()}',
                            style: labelStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
