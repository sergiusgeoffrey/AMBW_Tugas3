import 'universitas.dart';
import 'status.dart';

class Mahasiswa extends universitas implements Status{
  String? _NRP;
  int _IPS=0;
  int _IPK=4;
  bool Active=true;
  Mahasiswa(String? nama, int usia,int sks,String NRP,int IPS, int IPK) : super(nama, usia, sks){
    this._NRP = NRP;
    this._IPS = IPS;
    this._IPK = IPK;
  }

  @override
  String status() {
    if(Active){
      return "Mahasiswa Aktif";
    } else {
      return "Mahasiswa Cuti";
    } 
  }
  set IPS(int IPS){
    this._IPS = IPS;
    updateIPK(IPS);
  }
  void updateIPK(int n){
    this._IPK = n;
  }
  get IPK => this._IPK;
  get NRP => this._NRP;
  void setSKS(int N){
    if(N<2||N>24){
      print("SKS tidak valid");
    } else {
      this.sks = N;
    }
  }
  void changeStatus(){
    if(Active=true){
      Active=false;
    } else if (Active=false){
      Active=true;
    }
  }
  int viewSKS(){
    return this.sks;
  }

}