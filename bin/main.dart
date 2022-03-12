import 'mahasiswa.dart';
import 'staff.dart';
import 'dosen.dart';
import 'dart:io';
void main(List<String> arguments) {
  
  int GajiDasar=0;
  int Tunjangan=-1;

  stdout.write("Input Gaji Dasar: ");
  String? input  = stdin.readLineSync();
  GajiDasar = int.parse(input!);
  stdout.write("Input Tunjangan: "); 
  input  = stdin.readLineSync();
  Tunjangan = int.parse(input!);

  while(Tunjangan<0){
    if(Tunjangan<0){
      print("Tunjangan tidak boleh Negatif, Coba Lagi");
      stdout.write("Input Tunjangan: "); 
      input  = stdin.readLineSync();
      Tunjangan = int.parse(input!);
    }
  }
  var mh1=new Mahasiswa('Gejo', 21, 109);
  mh1.IPS = 3.58;
  mh1.changeStatusCuti();
  mh1.printAll();
  var dosenLB1=new DosenLB('AMBW', 22, 100);
  dosenLB1.printAll();
  var dosenTamu1 =new DosenTamu('Hello', 24, 100,Tunjangan);
  //dosenTamu1.printAll();
  var dosenTetap1 = new DosenTetap('World', 27, 100, GajiDasar,Tunjangan);
  //dosenTetap1.printAll();
  var staff1 = new Staff('Youtube', 33, 2, GajiDasar, Tunjangan);
  staff1.printAll();
}
