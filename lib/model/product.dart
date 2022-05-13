class ProductModel {
  final int id;
  final int? harga_produk, merek, promo;
  final String? nama_produk, deskripsi_produk, kategori_produk,
               link, gambar_produk;
  

  ProductModel({ 
    required this.id, 
    required this.nama_produk,
    required this.harga_produk,
    required this.deskripsi_produk,
    required this.kategori_produk,
    required this.link,
    required this.gambar_produk,
    required this.merek,
    required this.promo
    });
  
  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      id: int.parse(json['id']),
      nama_produk: json['nama_produk'], 
      harga_produk: int.parse(json['harga_produk']),
      deskripsi_produk: json['deskripsi_produk'].toString(),
      kategori_produk: json['kategori_produk'],
      link: json['link'],
      gambar_produk: json['gambar_produk'],
      merek: int.parse(json['merek']),
      promo: int.parse(json['promo']),
      );
  }

  toJSONEncodable() {
    Map<String, dynamic> m = new Map();

    m['id'] = id;
    m['nama_produk'] = nama_produk;
    m['harga_produk'] = harga_produk;
    m['deskripsi_produk'] = deskripsi_produk;
    m['kategori_produk'] = kategori_produk;
    m['link'] = link;
    m['gambar_produk'] = gambar_produk;
    m['merek'] = merek;
    m['promo'] = promo;
    return m;
  }
}
