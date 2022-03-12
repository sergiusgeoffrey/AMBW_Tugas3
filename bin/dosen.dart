import 'pegawai.dart';

class DosenLB extends Pegawai{
  DosenLB(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=gaji;
    this.tunjangan=tunjangan;
  }
  int getGaji(){
    return sks * 40000;
  }
  
}
class DosenTamu extends Pegawai{
  DosenTamu(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=0;
    this.tunjangan=tunjangan;
  }

  int getGaji(){
    return tunjangan + (sks * 40000);
  }
}
class DosenTetap extends Pegawai{
  DosenTetap(String? nama, int usia, int sks,int gaji,int tunjangan) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=gaji;
    this.tunjangan=tunjangan;
  }

  int getGaji(){
    return gaji + tunjangan + (sks * 40000);
  }
}