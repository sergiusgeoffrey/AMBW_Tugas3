import 'pegawai.dart';

class DosenLB extends Pegawai{
  DosenLB(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=0+(sks*40000);
    this.tunjangan=tunjangan;
  }
}
class DosenTamu extends Pegawai{
  DosenTamu(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=0+(sks*40000);
    this.tunjangan=tunjangan;
  }
}
class DosenTetap extends Pegawai{
  DosenTetap(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=gaji+(sks*40000);
    this.tunjangan=tunjangan;
  }
}