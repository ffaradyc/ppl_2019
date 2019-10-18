void main() {
  var budi = new Pengguna('Budi');
  //var wati = new Pengguna('Wati');
  print(budi.nama);
  print(budi.jenisKelamin);
  budi.jenisKelamin = 'Cewek';
  print(budi.jenisKelamin);
  budi.setJenisKelamin('Pria');
  print(budi.jenisKelamin);
  
}

class Pengguna {  
  String _nama;
  int _jenisKelamin = 1;

  Pengguna(String namaInput) {
    _nama = namaInput;
  }

  String get nama => _nama;

  String get jenisKelamin => _jenisKelamin == 1? 'Pria' : 'Wanita';
  set jenisKelamin(String jk) => jk == 'Pria' ? _jenisKelamin = 1 : _jenisKelamin = 0;
  
  void setJenisKelamin(String jk)
  {
    jk == 'Pria'? _jenisKelamin = 1 : _jenisKelamin = 0;
  }
  
}
