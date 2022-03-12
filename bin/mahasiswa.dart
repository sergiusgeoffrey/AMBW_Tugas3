import 'universitas.dart';

class Mahasiswa extends universitas {
  double _IPS=0;
  double _IPK=0;
  bool Active=true;
  //int semester=0;
  Mahasiswa(String? nama, int usia,int sks,{double IPS=0, double IPK=0}) : super(nama, usia, sks){
    this._IPS = IPS;
    this._IPK = IPK;
  }

  set IPS(double input){
    this._IPS = input;
    updateIPK(input);
  }
  
  void updateIPK(double n){
    this._IPK = n;
    // if(IPK==0&&semester==0){
    //   this._IPK = n;
    //   semester++;
    // } else{
    //   this._IPK = (IPK*(semester-1)+n)/semester; //Rumus Sementara
    //   semester++;
    // }
  }
  double getIPK(){
    return this._IPK;
  }
  double getIPS(){
    return this._IPS;
  }
  void setSKS(int N){
    if(N<2){
      print("SKS kurang dari batas minimal");
    } else if(N>24){
      print("SKS melebihi batas maksimal");
    } else {
      this.sks = N;
    } 
  }
  void changeStatusCuti(){
    if(Active=true){
      Active=false;
      print("Mahasiswa mengambil Cuti");
    } else if (Active=false){
      Active=true;
      print("Mahasiswa menjadi Aktif");
    }
  }
  void printAll(){
    print("Nama: $nama");
    print("Usia: $usia");
    print("SKS : $sks");
    print("IPS : $_IPS");
    print("IPK : $_IPK");
    if(Active){
      print("Status : Mahasiswa Aktif");
    } else {
      print("Status  : Mahasiswa Cuti");
    }
    print("");
  }
  int viewSKS(){
    return this.sks;
  }

}