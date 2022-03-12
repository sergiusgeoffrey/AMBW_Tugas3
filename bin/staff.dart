import 'pegawai.dart';

class Staff extends Pegawai {
  int _Absensi=0;
  Staff(String? nama, int usia, int Absensi,int gaji,int tunjangan,{int sks=0}) : super(nama, usia, sks,gaji, tunjangan){
    this._Absensi = Absensi;
  }
  bool Active=true;
  int countCutiDays=12;
  void statusCuti(int ajuan){
    if(countCutiDays<=0){
      print("Jatah untuk Cuti Habis");
      Active=true;
    } else if(countCutiDays<ajuan){
      print("Ajuan Cuti terlalu Besar, sisa Jatah cuti: ${countCutiDays} hari");
    } else{
      countCutiDays -= ajuan;
      print("Cuti Berhasil,${nama} sedang bercuti selama ${ajuan} hari");
    }
  }

  void Absen(){
    _Absensi+=1;
  }

  set Absensi(int n){
    _Absensi = n;
  }

  int get Absensi => _Absensi;
  int getTotalGaji(){
    return gaji + tunjangan * _Absensi;
  }
  void printAll(){
    print("Nama: $nama");
    print("Usia: $usia");
    print("Staff");
    print("Gaji Dasar: $gaji");
    print("Tunjangan: $tunjangan");
    print("Gaji Total: ${getTotalGaji()}");
    print("");
  }
}