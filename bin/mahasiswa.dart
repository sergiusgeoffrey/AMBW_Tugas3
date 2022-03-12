import 'universitas.dart';

class Mahasiswa extends universitas {
  double _IPS=0;
  double _IPK=0;
  bool Active=true;
  //int semester=0;
  Mahasiswa(String? nama, int usia,int sks,double IPS, double IPK) : super(nama, usia, sks){
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
  
  get IPK => this._IPK;

  void setSKS(int N){
    if(N<2){
      print("SKS kurang dari batas minimal");
    } else if(N>24){
      print("SKS melebihi batas maksimal");
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
  void printAll(){
    print("SKS : ${this.sks}");
    print("IPS : ${this._IPS}");
    print("IPK : ${this._IPK}");
    if(Active){
      print("Status : Mahasiswa Aktif");
    } else {
      print("Status  : Mahasiswa Cuti");
    } 
  }
  int viewSKS(){
    return this.sks;
  }

}