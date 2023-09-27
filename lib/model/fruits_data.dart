class Fruits {
  String nama;
  String price;
  String vitamin;
  String manfaat;
  String deskripsi;
  String imageAssets;
  List<String> imageUrls;

  Fruits(
      {required this.nama,
      required this.price,
      required this.vitamin,
      required this.manfaat,
      required this.deskripsi,
      required this.imageAssets,
      required this.imageUrls});
}

var fruitsData = [
  Fruits(
      nama: 'Apel',
      price: '12.000',
      vitamin: "vitamin A",
      manfaat: 'Jantung sehat',
      deskripsi:
          "Apel adalah buah yang populer dan dapat dengan mudah ditemukan di pasar tradisional ataupun di pasar swalayan. Apel memiliki rasa yang lezat dan menyegarkan sehingga banyak digemari oleh anak-anak. Tidak hanya itu, ternyata apel juga memberikan sejumlah manfaat kesehatan yang penting bagi tubuh anak-anak. diantanarnya kaya akan nutrisi, menyediakan energi dan menjaga kesehatan jantung",
      imageAssets: 'assets/images/apel.jpg',
      imageUrls: [
        'https://asset.kompas.com/crops/smfd25xgXRE3HpMLb2aamPeulYM=/21x0:1476x970/1200x800/data/photo/2022/08/30/630d7ae5d041f.jpg',
        'https://akcdn.detik.net.id/community/media/visual/2021/03/30/tipe-kepribadian-berdasarkan-buah-3_169.jpeg?w=700&q=90',
        'https://akcdn.detik.net.id/visual/2020/09/07/ilustrasi-buah-apel_169.jpeg?w=750&q=90'
      ]),
  Fruits(
      nama: 'Jeruk',
      price: '10.000',
      vitamin: "vitamin C",
      manfaat: 'Tulang sehat',
      deskripsi:
          "Buah jeruk menjadi salah satu buah yang dinilai cukup baik dalam meningkatkan imun tubuh seseorang. Hal ini disebabkan jeruk merupakan sumber vitamin C yang sangat baik. Tidak hanya itu, dalam satu buah jeruk juga mengandung vitamin dan mineral lain yang dibutuhkan, seperti vitamin B1, folat, hingga potassium.",
      imageAssets: 'assets/images/jeruk.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaHt0LxJ9g999tjWV-lWa9A5cxul7vwRh4PA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzjodE5_xTzDxB9GLR6JH-D0cwKpppDk9CbA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9pglfi61fxPiXlxbOwCJG6Yy0F08EaE78ZQ&usqp=CAU'
      ]),
  Fruits(
      nama: 'Mangga',
      price: '9.000',
      vitamin: "vitamin C",
      manfaat: 'Kulit sehat',
      deskripsi:
          "Buah mangga adalah sumber yang kaya akan vitamin C, nutrisi penting yang berperan dalam memperkuat sistem kekebalan tubuh. Vitamin C juga membantu menjaga kesehatan kulit dengan berkontribusi dalam produksi kolagen, serta mempercepat proses penyembuhan luka dan cedera.",
      imageAssets: 'assets/images/mangga.jpg',
      imageUrls: [
        'https://akcdn.detik.net.id/visual/2021/07/06/ilustrasi-mangga_169.jpeg?w=650',
        'https://akcdn.detik.net.id/visual/2021/10/12/tanaman-buah-mangga_169.jpeg?w=720&q=90',
        'https://akcdn.detik.net.id/visual/2020/07/21/mangga-muda_169.jpeg?w=650'
      ]),
  Fruits(
      nama: 'Nanas',
      price: '15.000',
      vitamin: "vitamin C ",
      manfaat: 'Reproduksi sehat',
      deskripsi:
          "Dalam dunia kesehatan, nanas dikenal memiliki beragam khasiat yang dapat mendukung kesehatan tubuh. Manfaat buah nanas meliputi menjaga sistem pencernaan tubuh, pengurangan peradangan, serta kemampuannya dalam memperkuat sistem kekebalan tubuh, berkat kandungan enzim bromelain, vitamin C, dan mineral esensial lainnya.",
      imageAssets: 'assets/images/nanas.jpg',
      imageUrls: [
        'https://i0.wp.com/umsu.ac.id/berita/wp-content/uploads/2023/08/nanas-kandungan-dan-manfaat.jpg?fit=1200%2C675&ssl=1',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnsv8E2ugHMLIbxnD8eFT6LR2UvoeqMoxy_A&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlkpXap3iTD9VJ95wIl9igvjlARrp7d7_Mzg&usqp=CAU'
      ]),
  Fruits(
      nama: 'Nangka',
      price: '18.000',
      vitamin: "vitamin C",
      manfaat: 'Pencernaan sehat',
      deskripsi:
          "Nangka termasuk buah yang mengandung banyak serat. Sehingga mengkonsumsi nangka secara teratur mampu mencegah sembelit. Selain itu, serat yang terkandung dalam nangka juga baik untuk kesehatan pencernaan lainnya, seperti mengurangi risiko kanker usus, kembung, dan lain sebagainya",
      imageAssets: 'assets/images/nangka.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuQSeMn-v7eDB41BLVYLvrveq4IOOOBhs91w&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh42T78g0UNWOGwOEjqXMjuRPifqb_OL4e4Q&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7NWgF5u95GLGTPY3AwtPLHz9Pu6XRAIvizg&usqp=CAU'
      ]),
  Fruits(
      nama: 'Durian',
      price: '25.000',
      vitamin: "vitamin A",
      manfaat: 'tulang sehat',
      deskripsi:
          "Durian adalah buah yang manis dan memiliki banyak manfaat diantaranya Solusi Agar Tidak Mudah Capek, Penangkal Depresi Secara Lebih Alami, Nutrisi Bagi Tulang Dan Gigi, Pencernaan Yang Lebih Sehat dll",
      imageAssets: 'assets/images/durian.jpg',
      imageUrls: [
        'https://akcdn.detik.net.id/visual/2021/10/08/ilustrasi-kulit-durian_169.jpeg?w=480&q=90',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShRmwCWLIQec_JR8IM4L_tsPxBIy5fHD8bUA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGRKXRVyagsi3Lx-Ab75_vRkplGVw3qv0YRA&usqp=CAU'
      ]),
  Fruits(
      nama: 'Buah Naga',
      price: '17.000',
      vitamin: "vitamin A",
      manfaat: 'Kulit sehat',
      deskripsi:
          "Buah naga kaya akan antioksidan, memakannya dapat membantu menjaga kulit Anda tetap kencang dan kenyal sehingga memberi tampilan awet muda dan mencegah penuaan dini. Buah naga merupakan sumber yang kaya vitamin A, vitamin esensial yang berperan penting dalam menjaga kesehatan mata",
      imageAssets: 'assets/images/buah_naga.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaNGbLfYmX9LvABoksRGMK8Rnuo3b0I7qWkw&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0GDfkx5vWXM2O5djtGOgYtWYzGI_dE9rGeg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM6Maue0qqUknCkKTA4QC7Z-me760_SNdTLw&usqp=CAU'
      ]),
  Fruits(
      nama: 'Mengkudu',
      price: '10.000',
      vitamin: "vitamin C",
      manfaat: 'Antioksidan Tubuh',
      deskripsi:
          "Buah mengkudu mengandung senyawa kimia selenium yang merupakan salah satu mineral penting sebagai sumber antioksidan alami bagi tubuh. Zat antioksidan sendiri berfungsi untuk menangkal berbagai radikal bebas yang dapat merusak tubuh sehingga daya tahan tubuh juga akan semakin kuat",
      imageAssets: 'assets/images/mengkudu.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV7Zl8Lal5avgYT_NvzJ---YUie1Mfry-5NA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvCfefqUeoCm9HPzYpxqbuMCOi_wLsWawBUw&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx9SXGkcg_ch25tYyWBTOmapVrvpHWw2IWnw&usqp=CAU'
      ]),
  Fruits(
      nama: 'Leci',
      price: '10.000',
      vitamin: "vitamin C",
      manfaat: 'kesehatan mata',
      deskripsi:
          "Buah leci merupakan buah kecil dan manis serta Buah leci memiliki kandungan vitamin C yang dapat meningkatkan produksi dan aktivitas sel-sel kekebalan tubuh, yang dapat melindungi tubuh dari infeksi dan penyakit.",
      imageAssets: 'assets/images/leci.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-TZY-Od_8oe31l4WsHZUUkHoanXrp4Q3-Cw&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCNY_OWFbcq5g2k4CwVSNAcxxj98kpAyEvHg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWjRWjp0-qlbuQrS3ZyhiTsnWyVSflA5NDig&usqp=CAU'
      ]),
  Fruits(
      nama: 'Pepaya',
      price: '7000',
      vitamin: "vitamin A",
      manfaat: 'Pencernaan sehat',
      deskripsi:
          "Buah pepaya adalah buah yang terbukti amat baik untuk pencernaan dan membantu menurunkan berat badan, karena papaya mengandung enzim bernama papain dan kandungan seratnya tinggi. Kalorinya pun rendah.",
      imageAssets: 'assets/images/pepaya.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc2hbeWs3r_dRBGpy_Cjz0h8db2rynZ4egzw&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQybh4cIGT-C7KPMihCGbl2lNJ5hN-uOsdnkw&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8si_PX5qCQAtVc8UqYssgTJlmBR5Sq3S6jw&usqp=CAU'
      ]),
  Fruits(
      nama: 'Stroberi',
      price: '11.000',
      vitamin: "vitamin C",
      manfaat: 'Jantung sehat',
      deskripsi:
          "Strawberry mengandung vitamin C yang cukup tinggi. Hal tersebut membuat buah ini bermanfaat untuk mengoptimalkan kesehatan jantung hingga mencegah kanker.",
      imageAssets: 'assets/images/stroberi.jpg',
      imageUrls: [
        'https://lh3.googleusercontent.com/p/AF1QipMpdSvoU_4ePLFsfUqq6X7nPob0z7QDxNFDflcB=w1080-h608-p-no-v0',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4YCWegAXpJo7fnan_e1KLhb9vwaMhFC2CZQ&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC2mGGCKQeLEdAcv4D0SIlXb8v3qfdkQeAJA&usqp=CAU'
      ]),
  Fruits(
      nama: 'Kiwi',
      price: '7000',
      vitamin: "vitamin C",
      manfaat: 'Percernaan sehat',
      deskripsi:
          "Kiwi adalah buah kecil yang berbentuk sawo. Selain memiliki rasa yang enak, buah kiwi memiliki banyak manfaat untuk kesehatan. Daging buahnya berwarna hijau, memiliki rasa yang manis serta kaya akan nutrisi seperti vitamin C, vitamin K, vitamin E, asam folat dan kalium. Kiwi juga mengandung banyak antioksidan dan merupakan sumber serat yang baik.",
      imageAssets: 'assets/images/kiwi.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6qij7seBb6QpjZShYT6Hyn3c7zMgpUSoXaA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSjHCVTFVqZgpxMF02m41Fko7TGuWwE12c6Q&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiFiD_TlE20UJAUodnoaMrmJzniGCQzC9N1g&usqp=CAU'
      ]),
  Fruits(
      nama: 'Jambu biji',
      price: '8000',
      vitamin: "vitamin C",
      manfaat: 'Pencernaan sehat',
      deskripsi:
          "Buah jambu biji merupakan buah yang mengandung antioksidan. Antioksidan berfungsi melindungi tubuh dari kerusakan sel akibat radikal bebas dan melancarkan sistem pencernaan. Hal ini karena jambu biji mengandung serat yang tinggi dapat mencegah sembelit dan menjaga kesehatan usus.",
      imageAssets: 'assets/images/jambu_biji.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMqqXmIZSSh1xVn-oBVSA0p9a3v30uIJ0NtQ&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgO2j5hJ08qVufxqbDKw75WDbB6S30Z3BvEA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS35lbPmYsV8ZEoFfEOgO8pRryN-lSU5FcLZw&usqp=CAU'
      ]),
  Fruits(
      nama: 'anggur',
      price: '15.000',
      vitamin: "vitamin C",
      manfaat: 'Menjaga imun',
      deskripsi:
          "Salah satu manfaat anggur untuk kesehatan adalah membuang racun dari dalam tubuh. Berdasarkan data USDA, dalam 100 gram anggur mengandung 3,6 mg vitamin C, Kandungan tersebutlah yang membuat anggur dapat mengeluarkan racun yang berada didalam tubuh kita dan juga meningkatkan aliran darah di tubuh kita.",
      imageAssets: 'assets/images/anggur.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv9G6co91NdqcqdRWHy0ZJpP0GSKZ4xRtYHA&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJSnTuf-K4OlsL7nH5mFqAjlc5nx5U8RThpQ&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMIHJ4IVxzMpeYXa8bsp0-kNIwtEJlxgdusw&usqp=CAU'
      ]),
  Fruits(
      nama: 'Semangka',
      price: '30.000',
      vitamin: "vitamin C",
      manfaat: 'Mata sehat',
      deskripsi:
          "Buah semangka merupakan salah satu buah yang disukai oleh Rosulullah. Buah ini banyak manfaatnya diantaranya Meningkatkan Kekebalan Tubuh, Menjaga Kesehatan Mata,  Mengontrol Gula Darah,  Menjaga Kesehatan Pencernaan,  Meredakan Nyeri Otot dll.",
      imageAssets: 'assets/images/semangka.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYfOL8yyqqb0YQw3LYYXPApwaJhxuNndN4mQ&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9DzS9Fk5QF6uIRYwlLMdmfntnBp-a2xzoMQ&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW-5sP3QUeJrI6hOd8WLcyzA9uugIfK4C5Nw&usqp=CAU'
      ]),
  Fruits(
      nama: 'Pisang',
      price: '7000',
      vitamin: "vitamin A",
      manfaat: 'Pencernaan sehat',
      deskripsi:
          "Buah pisang adlah buah yang banyak manfaatnya diantaranya Sumber Karbohidrat dan Vitamin A, Pisang Perlancar Metabolisme, Meningkatkan Kekebalan Tubuh, Melancarkan Aliran Oksigen ke Otak, dan Mengatasi Anemia dll.",
      imageAssets: 'assets/images/pisang.jpg',
      imageUrls: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbDYicPWIMQPCgMzxkCsPQKvrBwTF8rkyNtg&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-lxhmwzfTL2nsUj1sgp5XGmnWaV4q-J95_PSBOmh0d86WwzPlPNBsdbNDvVZq1uv9fnE&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdAKq0xEdMsz0wmxw9WD4RFtwUC8Q50zACgQ&usqp=CAU'
      ]),
  Fruits(
      nama: 'Alpukat',
      price: '14.000',
      vitamin: "vitamin E",
      manfaat: 'Jantung sehat',
      deskripsi:
          "Buah alpukat merupakan buah yang kaya akan khasiat diantaranya Menjaga berat badan, Mengontrol kadar gula darah,  Mencegah sembelit, Mengontrol tekanan darah, Menjaga kesehatan mata, Menjaga kesehatan jantung dan Mencegah osteoporosis dllf.",
      imageAssets: 'assets/images/alpukat.jpg',
      imageUrls: [
        'https://akcdn.detik.net.id/visual/2016/02/09/279f5573-2c09-42dc-a65d-741f59d720e9_169.jpg?w=400&q=90',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsHa9CFZ0jgsw2fFeJMhUe67Y7fn4jfnzosQ&usqp=CAU',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQC0tqUzD81t_fYM4J0h99oQmjiP-u1UlBKw&usqp=CAU'
      ]),
];
