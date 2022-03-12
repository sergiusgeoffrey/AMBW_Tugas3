import 'dart:io';
import 'mahasiswa.dart';
import 'staff.dart';
import 'dosen.dart';
void main(List<String> arguments) {
  var mh1=new Mahasiswa('Gejo', 21, 109, 3, 4);
  print(mh1.nama);
  var dosenLB1=new DosenLB('Yo', 22, 100, 0, 100000);
  print(dosenLB1.getGaji());
  //var staff1= new Staff('Gejo', usia, sks, gaji, tunjangan, kehadiran)
}
