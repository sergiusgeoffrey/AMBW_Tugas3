import 'pegawai.dart';

class Staff extends Pegawai {
  Staff(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji, tunjangan);
  bool Active=true;
  int countCutiDays=12;
  @override
  String status() {
    // TODO: implement status
    if(Active){
      return "Staff Aktif";
    } else {
      return "Staff Cuti";
    } 
  }
  void statusCuti(int ajuan){
    countCutiDays-=ajuan;
    if(countCutiDays<=0){
      print("Cuti Habis");
      Active=true;
    }
  }
  void changeCuti(int ajuanHari){
    Active=false;
    statusCuti(ajuanHari);
  }
}