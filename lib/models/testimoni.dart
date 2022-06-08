class Testimoni {
  int id;
  String nama;
  String desc;
  String img;

  Testimoni({
    required this.id,
    required this.nama,
    required this.desc,
    required this.img,
  });

  static List<Testimoni> generateListTestimoni() {
    return [
      Testimoni(
          id: 1,
          nama: "Sabrina, Pengajar",
          desc:
              "Aku mulai langganan aplikasi ini karena sakit dan ngga mau jajan sembarangan lagi. Emang lebih enak menunya, datangnya juga on time",
          img:
              'https://cdn.dribbble.com/users/3835653/screenshots/11936591/human_4x.png'),
      Testimoni(
          id: 2,
          nama: "Nurul, Karyawan bidang IT",
          desc:
              "Berlangganan itu ga perlu ngantri lagi waktu makan siang, makannya gak itu-itu aja, dan ga perlu kebingungan tiap hari nentuin mau makan apa",
          img:
              'https://cdn.dribbble.com/users/19849/screenshots/5732025/media/00b5f04fc339a8206ec98fecf49184d8.png?compress=1&resize=400x300&vertical=top'),
      Testimoni(
          id: 3,
          nama: "Alamanda, Karyawan Swasta",
          desc:
              "Aku coba macem-macem katering, tapi akhirnya aku suka aplikasi ini",
          img:
              'https://cdn.dribbble.com/users/19849/screenshots/5732025/media/00b5f04fc339a8206ec98fecf49184d8.png?compress=1&resize=400x300&vertical=top'),
    ];
  }
}
