# master_plan

`Jiha Ramdhan / 16 / TI-3D / 2341720043`

## Praktikum 1 - Dasar State dengan Model-View

2. Langkah 4 — `data_layer.dart`  
    - Membuat file yang `export` `plan.dart` dan `task.dart`.  
    - Tujuan: impor model jadi ringkas (`import 'models/data_layer.dart';`), memudahkan skalabilitas saat jumlah model bertambah, menyembunyikan detail struktur folder, dan mempermudah refactor/maintainability.

3. Variabel `plan` di Langkah 6 dan alasan `const`  
    - Kenapa ada variabel `plan`: menyimpan state aplikasi (daftar task, status complete, deskripsi) sebagai single source of truth agar UI bisa merefleksikan perubahan.  
    - Kenapa `const`: `const Plan()` memberikan state awal yang immutable, memungkinkan canonical instance (potensi efisiensi memori), dan memastikan perubahan hanya melalui mekanisme state (mis. `setState()` atau state management). (Catatan: `Plan` harus punya const constructor agar ini berlaku.)

4. Hasil Langkah 9 
    ![Demo menambah, mengubah, centang](/P1.png)  
    Penjelasan singkat:  
    - Dibuat ListTile dinamis berisi `Checkbox` (toggle complete) dan `TextFormField` (edit deskripsi).  
    - Setiap perubahan memanggil `setState()` lalu menyalin list: `List<Task>.from(plan.tasks)` dan mengupdate elemen tertentu, mis.  
      `..[index] = Task(description: text, complete: task.complete)`  
    - Hasil: task bisa diedit di UI, status “complete” bisa dicentang, dan list berganti secara reaktif mengikuti state.

5. Kegunaan `initState()` (Langkah 11) dan `dispose()` (Langkah 13)  
    - `initState()`: inisialisasi resource sekali saat widget dibuat (mis. `ScrollController`), menambahkan listener (mis. unfocus TextField saat scroll).  
    - `dispose()`: bersihkan resource saat widget dihapus (panggil `scrollController.dispose()` dan lepas listener) untuk menghindari memory leak.  
    - Inti: `initState()` = siapkan resource; `dispose()` = bersihkan resource.

## Praktikum 2 — InheritedWidget & InheritedNotifier

2. Mana yang dimaksud dan mengapa `InheritedNotifier`?  
    - `PlanProvider extends InheritedNotifier<ValueNotifier<Plan>>` — ini InheritedWidget yang membungkus subtree dan meneruskan `Plan`.  
    - Menggunakan `InheritedNotifier` karena terintegrasi dengan `ValueNotifier`, memicu rebuild otomatis saat nilai berubah, dan tidak perlu override `updateShouldNotify`. Lebih sederhana dan reaktif untuk state sharing.

3. Maksud method di langkah 3  
    - `int get completedCount => tasks.where((t) => t.complete).length;`  
    - `String get completenessMessage => '$completedCount out of ${tasks.length} tasks';`  
    - Tujuan: letakkan logika perhitungan progress di model (fat model, thin view) supaya UI cukup memanggil `plan.completenessMessage`.

4. Hasil Langkah 9 (GIF + penjelasan singkat)  
    - Bungkus list dengan `ValueListenableBuilder<Plan>` sehingga perubahan `Plan` otomatis update UI.  
    - Tampilkan progress dengan `Text(plan.completenessMessage)` (mis. di footer/`SafeArea`).  
    - Tata letak: `Column` + `Expanded` agar list dan footer tidak bertabrakan.  
    - Interaksi yang terlihat pada GIF: menambah task, mengedit deskripsi, mencentang/uncentang task, dan progress (x out of y) berubah real-time.  
