class universitas{
  String? _nama;
  int _usia=0;
  int _sks=0;
  universitas(this._nama,this._usia,this._sks);

  //Get
  String get nama => this._nama!;
  int get usia => this._usia;
  int get sks => this._sks;

  //Set
  set nama(String dtNama){
    _nama = dtNama;
  }
  set usia(int dtUsia){
    _usia = dtUsia;
  }
  set sks(int dtSks){
    _sks = dtSks;
  }
}
