# Praktikum Functions pada Dart

Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya.

---

## 1. Apa yang dimaksud dengan Functions dalam bahasa Dart?

**Functions** adalah blok kode yang dapat digunakan kembali untuk menjalankan tugas tertentu. Functions membantu membuat kode lebih terstruktur dan mudah dipelihara.

```dart
int tambah(int a, int b) {
    return a + b;
}
```

---

## 2. Jenis-jenis Parameter pada Functions dan Contoh Sintaksnya

- **Positional Parameter**: Parameter yang urutannya harus sesuai saat pemanggilan.
    ```dart
    void sapa(String nama, int umur) {
        print('Halo $nama, umur Anda $umur tahun');
    }
    ```

- **Optional Positional Parameter**: Parameter yang boleh tidak diisi, ditandai dengan tanda `[]`.
    ```dart
    void sapa(String nama, [int? umur]) {
        print('Halo $nama, umur Anda $umur tahun');
    }
    ```

- **Named Parameter**: Parameter yang dipanggil berdasarkan nama, ditandai dengan `{}`.
    ```dart
    void sapa({required String nama, int umur = 0}) {
        print('Halo $nama, umur Anda $umur tahun');
    }
    ```

---

## 3. Functions sebagai First-Class Objects

Di Dart, functions dapat disimpan dalam variabel, dikirim sebagai parameter, atau dikembalikan dari function lain.

```dart
void cetakPesan() {
    print('Hello, Dart!');
}

void jalankanFunction(void Function() func) {
    func();
}

void main() {
    jalankanFunction(cetakPesan);
}
```

---

## 4. Apa itu Anonymous Functions? Jelaskan dan Berikan Contohnya

**Anonymous Function** adalah function tanpa nama, biasanya digunakan sebagai argument atau callback.

```dart
var list = [1, 2, 3];
list.forEach((item) {
    print(item);
});
```

---

## 5. Perbedaan Lexical Scope dan Lexical Closures serta Contohnya

- **Lexical Scope**: Ruang lingkup variabel ditentukan oleh posisi kode saat ditulis.
    ```dart
    void main() {
        var nama = 'Dart';
        void tampilkanNama() {
            print(nama); // Bisa mengakses 'nama' karena lexical scope
        }
        tampilkanNama();
    }
    ```

- **Lexical Closure**: Function yang "mengunci" variabel dari scope di atasnya.
    ```dart
    Function buatPenambah(int nilai) {
        return (int x) => x + nilai;
    }

    var tambahLima = buatPenambah(5);
    print(tambahLima(10)); // Output: 15
    ```

---

## 6. Cara Membuat Function yang Mengembalikan Multiple Value

Gunakan `Map` atau `List` untuk mengembalikan beberapa nilai sekaligus.

```dart
Map<String, dynamic> getData() {
    return {
        'nama': 'Andi',
        'umur': 20
    };
}

void main() {
    var data = getData();
    print(data['nama']); // Andi
    print(data['umur']); // 20
}
```