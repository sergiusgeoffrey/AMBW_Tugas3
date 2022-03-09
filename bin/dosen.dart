import 'status.dart';
import 'pegawai.dart';

class DosenLB extends Pegawai{

  DosenLB(String? nama, int usia, int sks) : super(nama, usia, sks){
    //Contoh Gaji Dasar
    this.gaji=100000+(sks*40000);
    this.tunjangan=tunjangan;
  }
}
class DosenTamu extends Pegawai{

  DosenTamu(String? nama, int usia, int sks) : super(nama, usia, sks){
    //Contoh Gaji Dasar
    this.gaji=100000+(sks*40000);
    this.tunjangan=0;
  }
}
class DosenTetap extends Pegawai{
  int kehadiran=0;
  DosenTetap(String? nama, int usia, int sks) : super(nama, usia, sks){
    //Contoh Gaji Dasar
    this.gaji=100000+(sks*40000);
    this.tunjangan=tunjangan*kehadiran;
  }
}