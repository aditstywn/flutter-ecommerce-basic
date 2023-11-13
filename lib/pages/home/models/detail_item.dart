class DetailItem {
  String name;
  String merk;
  String harga;
  String stok;
  String kondisi;
  String terjual;
  String bintang;
  String ulasan;
  String description;
  String imageAsset;

  DetailItem({
    required this.name,
    required this.merk,
    required this.harga,
    required this.stok,
    required this.kondisi,
    required this.terjual,
    required this.bintang,
    required this.ulasan,
    required this.description,
    required this.imageAsset,
  });
}

var detailItem = [
  DetailItem(
    name: 'Ideapad Slim',
    merk: 'Lenovo',
    harga: '12.500.000',
    stok: '76',
    kondisi: 'Baru',
    terjual: '20RB',
    bintang: '4.1',
    ulasan: '128',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
    imageAsset: 'assets/images/Ideapad Slim 5.png',
  ),
  DetailItem(
    name: 'Thinkpad Z16',
    merk: 'Thinkpad',
    harga: '10.000.000',
    stok: '76',
    kondisi: 'Bekas',
    terjual: '23',
    bintang: '3.5',
    ulasan: '321',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
    imageAsset: 'assets/images/thinkpad Z16.png',
  ),
  DetailItem(
    name: 'TUF Gaming A15 ',
    merk: 'Asus',
    harga: '31.000',
    stok: '76',
    kondisi: 'Setengah Pakai',
    terjual: '1RB',
    bintang: '5',
    ulasan: '321',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
    imageAsset: 'assets/images/TUF Gaming A15 FA506.png',
  ),
  DetailItem(
    name: 'Vivobook 14 A416',
    merk: 'Asus',
    harga: '12.000',
    stok: '76',
    kondisi: 'Baru',
    terjual: '7.2RB',
    bintang: '2.2',
    ulasan: '321',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
    imageAsset: 'assets/images/vivobook 14 A416.png',
  ),
];
