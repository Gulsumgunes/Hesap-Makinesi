import 'dart:io';

void add(int num1, int num2, [int? num3]) {
  int result = num1 + num2;
  if (num3 != null) {
    result += num3;
  }
  print('Sonuç = $result');
}

void sub(int num1, int num2) {
  print('Sonuç = ${num1 - num2}');
}

void mul(int num1, int num2) {
  print('Sonuç = ${num1 * num2}');
}

void div(int num1, int num2) {
  if (num2 != 0) {
    double sonuc = num1 / num2;
    print('Sonuç = $sonuc');
  } else {
    print('Hata: Sıfıra bölme hatası!');
  }
}

void main() {
  print("Lütfen bir işlem türü seçin (+, -, *, /):");
  String? islemTuru = stdin.readLineSync();

  if (islemTuru == null ||
      (islemTuru != '+' &&
          islemTuru != '-' &&
          islemTuru != '*' &&
          islemTuru != '/')) {
    print("Hata: Geçersiz işlem türü!");
    return;
  }

  print("Lütfen bir sayı girin:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Lütfen bir sayı girin:");
  int num2 = int.parse(stdin.readLineSync()!);

  if (islemTuru == "+") {
    print("Üçüncü sayıyı girmek istiyor musunuz? (E/H):");
    String? input = stdin.readLineSync();
    if (input == "E" || input == "e") {
      print("Lütfen bir sayı girin:");
      int? num3 = int.tryParse(stdin.readLineSync()!);
      add(num1, num2, num3);
    } else {
      add(num1, num2);
    }
  } else if (islemTuru == "-") {
    sub(num1, num2);
  } else if (islemTuru == "*") {
    mul(num1, num2);
  } else if (islemTuru == "/") {
    div(num1, num2);
  }
}
