import 'person.dart';
import 'status.dart';

class Mahasiswa extends Person implements Status{
  String? _NRP;
  bool Active=true;
  Mahasiswa(String? nama, int usia,int sks,String NRP) : super(nama, usia, sks){
    this._NRP = NRP;
  }

  @override
  String status() {
    // TODO: implement status
    if(Active){
      return "Mahasiswa Aktif";
    } else {
      return "Mahasiswa Cuti";
    } 
  }
  void takeSKS(){

  }
  int viewSKS(){
    return this.sks;
  }

}