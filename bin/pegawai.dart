import 'universitas.dart';

class Pegawai extends universitas {
  int _gaji=0;
  int _tunjangan=0;

  Pegawai(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks){
    this.gaji = gaji;
    this.tunjangan = tunjangan;
  }
  //Get
  int get gaji => this._gaji;
  int get tunjangan => this._tunjangan;

  //Set
  set gaji(int dtGaji){
    _gaji = dtGaji;
  }
  set tunjangan(int dtTunjangan){
    _tunjangan = dtTunjangan;
  }
}