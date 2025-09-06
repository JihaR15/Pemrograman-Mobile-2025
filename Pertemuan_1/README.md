# 02 | Pengantar Bahasa Pemrograman Dart - Bagian 1 (Variable dan Tipe Data)

## Soal 1
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
> [main.dart](https://github.com/JihaR15/Pemrograman-Mobile-2025/blob/main/Pertemuan_1/main.dart)

## Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!
> Jawab:
Memahami bahasa Dart sangat penting sebelum menggunakan Flutter karena seluruh kode Flutter ditulis dengan Dart. Dengan menguasai Dart, kita bisa memahami dasar logika pemrograman seperti variabel, fungsi, OOP, dan null safety, sehingga lebih mudah membangun aplikasi, menghindari bug, serta memanfaatkan fitur unggulan Flutter seperti hot reload. Dart menjadi fondasi agar pengembangan aplikasi Flutter lebih efektif, efisien, dan terarah.

## Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
> Jawab:
- Poin-Poin Penting :
    - Dart sebagai inti Flutter
    - Bahasa utama dalam Flutter
    - Memahami Dart = fondasi kuat untuk menguasai Flutter.

- Persiapan sebelum belajar Dart
    - Laptop/PC minimal RAM 4GB, Core i3.
    - Browser Chrome + koneksi internet.
    - Pengetahuan dasar algoritma & OOP.


- Keunggulan Dart
    - Productive tooling → dukungan IDE, plugin, dan ekosistem paket besar.
    - Garbage collection → manajemen memori otomatis.
    - Optional type annotations + static typing → aman & konsisten.
    - Portability → bisa dikompilasi ke JavaScript atau kode native (ARM, x86).


- Evolusi Dart
    - Diluncurkan 2011, stabil 2013.
    - Awalnya fokus web (gantikan JavaScript), kini fokus mobile lewat Flutter.
    - Dart 2.0 (2018) → perubahan besar dengan performa lebih baik & OOP kuat.
    - Dipilih Flutter karena modern, fleksibel, lintas platform.


- Cara kerja Dart
    - Dua cara eksekusi:
    - Dart VM (Just-In-Time / JIT) → debugging & hot reload.
    - AOT (Ahead-Of-Time) → performa tinggi (untuk release build).
    - Hot reload → fitur andalan Flutter, memanfaatkan JIT untuk update cepat.


- Struktur bahasa Dart
    - Sintaks mirip C/Java/JavaScript.
    - Fully object-oriented: class, object, inheritance, polymorphism, encapsulation.
    - Semua tipe data adalah objek (tidak ada primitive seperti Java).


- Operator di Dart
    - Aritmatika: +, -, *, /, ~/, %.
    - Increment/decrement: ++var, var++, --var, var--.
    - Perbandingan: ==, !=, <, >, <=, >=.
    - Logika: !, ||, &&.
    - Operator bisa dioverride dalam class.


- Praktik dengan Dart
    - DartPad → tool online untuk mencoba Dart tanpa instalasi.
    - Bisa juga run lokal (dart hello_world.dart).


- Fungsi utama (main function)
    - Setiap program Dart harus memiliki void main() { ... }.
    - Function vs Method:
    - Function → di luar class.
    - Method → bagian dari class, terkait instance (this).

## Soal 4
Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !
> Jawab:
- Null Safety di Dart
    - Null Safety adalah fitur Dart yang memastikan variabel tidak bisa bernilai null kecuali secara eksplisit diizinkan.
    - Tujuannya → mencegah error null reference (sering disebut null pointer exception).
    - Dengan null safety, kita harus menentukan apakah variabel bisa null atau tidak.

- Late Variable di Dart
    - Late digunakan ketika kita ingin menunda inisialisasi variabel non-nullable.
    - Cocok dipakai jika nilai variabel baru tersedia nanti, tapi kita ingin tetap aman dari null.
    - Kalau late dipanggil sebelum diisi nilainya → akan error runtime.

Contoh Null Safety: [nullSafety.dart](https://github.com/JihaR15/Pemrograman-Mobile-2025/blob/main/Pertemuan_1/nullSafety.dart)


Contoh Late Variable: [lateVariable.dart](https://github.com/JihaR15/Pemrograman-Mobile-2025/blob/main/Pertemuan_1/lateVariable.dart)



