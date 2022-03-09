import 'person.dart';

class Pegawai extends Person {
  int _gaji=0;
  int _tunjangan=0;
  int _kehadiran=0;
  Pegawai(String? nama, int usia, int sks) : super(nama, usia, sks){
    this.gaji = gaji;
    this.tunjangan = tunjangan;
    this.kehadiran = kehadiran;
  }
  //Get
  int get gaji => this._gaji;
  int get tunjangan => this._tunjangan;
  int get kehadiran => this._kehadiran;
  //Set
  set gaji(int dtGaji){
    _gaji = dtGaji;
  }
  set tunjangan(int dtTunjangan){
    _tunjangan = dtTunjangan;
  }
  set kehadiran(int dtKehadiran){
    _kehadiran = dtKehadiran;
  }
}