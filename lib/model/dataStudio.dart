class DataStudio {
  final String id;
  final String nama;
  final String jarak;
  final String harga;
  final String imgUrl;
  final String rating;

  DataStudio({
    required this.id,
    required this.nama,
    required this.jarak,
    required this.harga,
    required this.imgUrl,
    required this.rating,
  });
}

final List<DataStudio> daftarStudio = [
  DataStudio(
    id: 'ST01',
    nama: 'Nama Studio',
    jarak: '2.5',
    harga: '35k',
    rating: '4.5',
    imgUrl:
        'https://events.rumah123.com/news-content/img/2021/08/14164041/biaya-membuat-studio-musik.jpg',
  ),
  DataStudio(
    id: 'ST02',
    nama: 'Nama Studio',
    jarak: '2.5',
    harga: '35k',
    rating: '4.5',
    imgUrl: 'https://tangerangnews.com/assets/uploaded/photo/2021/10/12/c55b2b8691807b5ba6e5b8a25d738ce9.jpg',
  ),
  DataStudio(
    id: 'ST03',
    nama: 'Nama Studio',
    jarak: '2.5',
    harga: '35k',
    rating: '4.5',
    imgUrl: 'https://image.archify.com/blog/l/9wr7y6k3.jpg',
  ),
  DataStudio(
    id: 'ST04',
    nama: 'Nama Studio',
    jarak: '2.5',
    harga: '35k',
    rating: '4.5',
    imgUrl: 'https://ardianwibisono.files.wordpress.com/2010/01/studio.jpg',
  ),
];
