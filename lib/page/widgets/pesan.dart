import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makanan_app/models/makanan.dart';
import 'package:makanan_app/page/invoice.dart';
import 'package:makanan_app/theme/style.dart';

class PesanPage extends StatefulWidget {
  final Makanan makanan;

  PesanPage({required this.makanan});

  @override
  State<PesanPage> createState() => _PesanPageState();
}

class _PesanPageState extends State<PesanPage> {
  int qty = 1;
  late num total = widget.makanan.harga;

  final _formKey = GlobalKey<FormState>();

  TextEditingController cQty = TextEditingController();
  TextEditingController cLvl = TextEditingController();
  TextEditingController cCatatan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.makanan.nama),
            Text('x ${qty}'),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: TitleTextStyle.copyWith(fontSize: 18)),
            Text(
              "Rp.${total.toString()}",
              style: TitleTextStyle.copyWith(fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jumlah Pesanan *'),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: cQty,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    total = int.parse(value) *
                        int.parse(widget.makanan.harga.toString());
                    print(total);
                  });
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kolom Wajib diisi!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text('Lvl Pedas *'),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: cLvl,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 10)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kolom Wajib diisi!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text('Catatan Tambahan'),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: cCatatan,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 10)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => InvoicePage(widget.makanan,
                                total, cLvl.text, cQty.text, cCatatan.text),
                          ),
                        );
                      }
                    },
                    child: const Text('Bayar'),
                  ),
                  SizedBox(
                    width: 20,
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
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
