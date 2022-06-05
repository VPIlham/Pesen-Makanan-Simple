class Makanan {
  int id;
  String nama;
  String desc;
  num harga;
  String img;

  Makanan({
    required this.id,
    required this.nama,
    required this.desc,
    required this.harga,
    required this.img,
  });

  static List<Makanan> generateListMakanan() {
    return [
      Makanan(
          id: 1,
          nama: "Arabian Food",
          desc: "Makanan Khas Arab yang menggugah selera",
          harga: 55000,
          img: 'assets/makanan_1.png'),
      Makanan(
          id: 2,
          nama: "Eropa Food",
          desc: "Terkenal di negeri belanda",
          harga: 85000,
          img: 'assets/makanan_2.png'),
      Makanan(
          id: 3,
          nama: "Turkey Food",
          desc: "Paling terkenal di turki",
          harga: 35000,
          img: 'assets/makanan_3.png'),
      Makanan(
          id: 3,
          nama: "American Food",
          desc: "Terlaris di negri paman sam",
          harga: 90000,
          img: 'assets/makanan_4.png'),
    ];
  }
}
