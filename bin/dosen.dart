import 'pegawai.dart';

class DosenLB extends Pegawai{
  DosenLB(String? nama, int usia, int sks,{int gaji=0,int tunjangan=0}) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=0;
    this.tunjangan=0;
  }
  int getGaji(){
    return sks * 40000;
  }

  void printAll(){
    print("Nama: $nama");
    print("Usia: $usia");
    print("Dosen LB");
    print("Jumlah SKS: $sks");
    print("Gaji: ${getGaji()}");
    print("");
  }
}
class DosenTamu extends Pegawai{
  DosenTamu(String? nama, int usia, int sks,int tunjangan,{int gaji=0}) : super(nama, usia, sks,gaji,tunjangan){
    //Contoh Gaji Dasar
    this.gaji=0;
    this.tunjangan=tunjangan;
  }

  int getGaji(){
    return tunjangan + (sks * 40000);
  }

  void printAll(){
    print("Nama: $nama");
    print("Usia: $usia");
    print("Dosen Tamu");
    print("Tunjangan: $tunjangan");
    print("Jumlah SKS: $sks");
    print("Gaji: ${getGaji()}");
    print("");
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

  void printAll(){
    print("Nama: $nama");
    print("Usia: $usia");
    print("Dosen Tetap");
    print("Gaji Dasar: $gaji");
    print("Tunjangan: $tunjangan");
    print("Jumlah SKS: $sks");
    print("Gaji: ${getGaji()}");
    print("");
  }
}