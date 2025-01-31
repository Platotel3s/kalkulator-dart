import 'dart:io';

void main() {
  bool ulang = true;
  do {
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
    int? pil = int.tryParse(stdin.readLineSync() ?? '');

    if (pil == null || pil < 1 || pil > 5) {
      print("Pilihan tidak valid");
    } else {
      stdout.write("Masukkan bilangan pertama : ");
      double? a = double.tryParse(stdin.readLineSync() ?? '');
      stdout.write("Masukkan bilangan kedua : ");
      double? b = double.tryParse(stdin.readLineSync() ?? '');

      if (a == null || b == null) {
        print("Input tidak valid, harap masukkan angka.");
      } else {
        double hasil = 0;
        switch (pil) {
          case 1:
            hasil = penjumlahan(a, b);
            break;
          case 2:
            hasil = pengurangan(a, b);
            break;
          case 3:
            hasil = perkalian(a, b);
            break;
          case 4:
            hasil = pembagian(a, b);
            break;
          case 5:
            hasil = modulus(a, b);
            break;
        }
        print("Hasilnya : $hasil");
      }
    }

    stdout.write("Mau ulangi (y/t) : ");
    String? jawaban = stdin.readLineSync();
    if (jawaban != null && jawaban.toUpperCase() == 'T') {
      ulang = false;
    }
  } while (ulang);

  print("Sampai jumpa kembali");
}

double penjumlahan(double a, double b) {
  return a + b;
}

double pengurangan(double a, double b) {
  return a - b;
}

double perkalian(double a, double b) {
  return a * b;
}

double pembagian(double a, double b) {
  if (b == 0) {
    print("Error: Pembagian dengan nol tidak diperbolehkan.");
    return double.nan; // Mengembalikan NaN (Not a Number) jika pembagian dengan nol
  }
  return a / b;
}

double modulus(double a, double b) {
  if (b == 0) {
    print("Error: Modulus dengan nol tidak diperbolehkan.");
    return double.nan; // Mengembalikan NaN (Not a Number) jika modulus dengan nol
  }
  return a % b;
}
