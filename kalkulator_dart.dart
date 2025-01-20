import 'dart:io';

void main(){
  bool ulang=true;
  do{
    print("==================== KALKULATOR DART ====================");
    print(" ");
    print("1. Penjumlahan");
    print("2. Pengurangan");
    print("3. Perkalian");
    print("4. Pembagian");
    print("5. Modulus");
    print(" ");
    print("=========================================================");
    stdout.write("Masukkan pilihan (1-5) : ");
    int pil=int.parse(stdin.readLineSync() ?? '0');
    
      switch(pil){
        case 1:{
          stdout.write("Masukkan bilangan pertama : ");
          double a = double.parse(stdin.readLineSync() ?? '0');
          stdout.write("Masukkan bilangan kedua : ");
          double b = double.parse(stdin.readLineSync() ?? '0');
          double hasil=a+b;
          print("Hasilnya : $hasil");
          break;
        }
        case 2:{
          stdout.write("Masukkan bilangan pertama : ");
          double a = double.parse(stdin.readLineSync() ?? '0');
          stdout.write("Masukkan bilangan kedua : ");
          double b = double.parse(stdin.readLineSync() ?? '0');
          double hasil=a-b;
          print("Hasilnya : $hasil");
          break;
        }
        case 3:{
          stdout.write("Masukkan bilangan pertama : ");
          double a = double.parse(stdin.readLineSync() ?? '0');
          stdout.write("Masukkan bilangan kedua : ");
          double b = double.parse(stdin.readLineSync() ?? '0');
          double hasil=a*b;
          print("Hasilnya : $hasil");
          break;
        }
        case 4:{
          stdout.write("Masukkan bilangan pertama : ");
          double a = double.parse(stdin.readLineSync() ?? '0');
          stdout.write("Masukkan bilangan kedua : ");
          double b = double.parse(stdin.readLineSync() ?? '0');
          double hasil=a/b;
          print("Hasilnya : $hasil");
          break;
        }
        case 5:{
          stdout.write("Masukkan bilangan pertama : ");
          double a = double.parse(stdin.readLineSync() ?? '0');
          stdout.write("Masukkan bilangan kedua : ");
          double b = double.parse(stdin.readLineSync() ?? '0');
          double hasil=a%b;
          print("Hasilnya : $hasil");
          break;
        }
        default:{
          print("Pilihan tidak valid");
        }
      }

      stdout.write("Mau ulangi (y/t) : ");
      String? jawaban=stdin.readLineSync();
      if(jawaban != null){
        if(jawaban.toUpperCase() == 'T') ulang=false;
      }
    }while(ulang);

    print("Sampai jumpa kembali");
}