void main() {
  //soru1
  double sonuc1 = milCevirme(100);
  print("Girilen km nin mil dönüşüm sonucu : $sonuc1");

  //soru2
  double sonuc2 = dikdortgenAlanHesapla(kisaKenar: 5, uzunKenar: 10);
  print("dikdörtgenin alanı : $sonuc2");

  //soru3
  int sonuc3 = faktoriyelHesapla(sayi: 5);
  print("Girilen sayının faktoriyeli : $sonuc3");

  //soru4
  String sonuc4 = kelimeHesapla("Merhaba ben mert ");
  print("Girilen değer üzerinde ${sonuc4.toString()} adet e bulunmaktadır.");

  //soru5
  int sonuc5 = icAcilarToplami(3);
  print("Hesaplanan iç açı değeri $sonuc5");

  //soru6
  int sonuc6 = maasHesapla(20);
  print("Hesaplanan maaş : $sonuc6");

  //soru7
  int sonuc7 = otoparkHesapla(6);
  print("Hesaplanan otopark ücreti : $sonuc7");
}

//soru1
double milCevirme(double km) {
  double milDegeri = 0.621;
  double sonuc = km * milDegeri;
  return sonuc;
}

//soru2
double dikdortgenAlanHesapla({double kisaKenar = 0, double uzunKenar = 0}) {
  return kisaKenar * uzunKenar;
}

//soru3
int faktoriyelHesapla({int sayi = 1}) {
  int sonuc = 1;
  for (var i = 1; i <= sayi; i++) {
    sonuc *= i;
  }
  return sonuc;
}

//soru4
String kelimeHesapla(String bul) {
  int sonuc = ("e".allMatches(bul).length);

  return sonuc.toString();
}

//soru5
int icAcilarToplami(int aciSayisi) {
  int sonuc = (((aciSayisi - 2) * 180) ~/ aciSayisi);
  return sonuc;
}

//soru6
int maasHesapla(int gunSayisi) {
  int saat = 0;
  int para = 0;
  saat = gunSayisi * 8;

  for (var i = 1; i <= saat; i++) {
    if (i <= 150) {
      para += 40;
    } else {
      para += 80;
    }
  }
  return para;
}

//soru7
int otoparkHesapla(int saat) {
  int para = 0;
  for (var i = 0; i < saat; i++) {
    if (i < 1) {
      para += 50;
    } else {
      para += 10;
    }
  }
  return para;
}
