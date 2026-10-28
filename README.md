# Laporan Praktikum Pemrograman Mobile - Flutter

**Nama** : Siti Aulia Febriana
**NIM** : H1D024134
**Shift Lama** : B
**Shift Baru** : E
**Praktikum** : Pemrograman Mobile

---

## 📝 Tugas Pertemuan 1: Bahasa Pemrograman Dart

**Tanggal:** Rabu, 21 Oktober 2026

### Deskripsi Teknis & Non-Teknis

- **Non-Teknis:** Pengenalan dasar bahasa pemrograman Dart sebagai fondasi utama pengembangan aplikasi multi-platform menggunakan Flutter, mencakup konsep dasar pemrograman berorientasi objek (OOP), eksepsi, dan pemrograman asinkronus.
- **Teknis:**
  - Mencoba dasar Dart secara online menggunakan DartPad (`https://dartpad.dev`).
  - Mempelajari tipe data (`int`, `double`, `String`, `bool`, `var`), operasi matematika, dan logika.
  - Implementasi struktur kontrol, percabangan, dan fungsi.
  - Pembuatan kelas (class) dan objek (object), penggunaan `import`, penanganan eksepsi (`try-catch`), serta operasi asinkronus dengan `async` dan `await`.

### Kesimpulan Praktikum

Pertemuan pertama memberikan pemahaman mengenai sintaks dan fitur inti bahasa Dart yang menjadi dasar sebelum membangun antarmuka aplikasi dengan Flutter.

---

## 📝 Tugas Pertemuan 2: Widget & Design Flutter

**Tanggal:** Rabu, 28 Oktober 2026

### Deskripsi Teknis & Non-Teknis

- **Non-Teknis:** Pengenalan framework Flutter, instalasi dan konfigurasi lingkungan pengembangan, pembuatan struktur folder proyek, serta pemahaman tata letak dasar antarmuka pengguna mobile.
- **Teknis:**
  - Instalasi Flutter SDK, konfigurasi PATH, dan pembuatan proyek `belajarflutter`.
  - Membuat aplikasi *Hello World* menggunakan `MaterialApp`, `Scaffold`, `AppBar`, `Center`, dan `Text` dengan `StatelessWidget`.
  - Memisahkan kode ke beberapa file `.dart` (`hello_world.dart`, `column_widget.dart`, `row_widget.dart`) agar lebih rapi.
  - Membuat layout vertikal (`Column`) dan horizontal (`Row`).
  - Membuat form input menggunakan `TextField` dengan `TextEditingController` pada `ProdukForm` (`StatefulWidget`), lalu navigasi ke halaman `ProdukDetail` dengan `Navigator.push`.
  - Menampilkan daftar data menggunakan `ListView`, `Card`, dan `ListTile` pada `ProdukPage`.

### Struktur Folder

```
lib/
├── main.dart
├── hello_world.dart
├── column_widget.dart
├── row_widget.dart
└── ui/
    ├── produk_form.dart
    ├── produk_detail.dart
    └── produk_page.dart
```

### Cara Menjalankan

```bash
flutter pub get
flutter run
```

### Hasil / Screenshot

<!-- ![Hello World] <img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/5c9fc76f-e087-49fa-8136-59bac075563d" />
 -->
<!-- ![Form Produk]<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/29fea529-03d9-4cd7-b6d4-d3a8683a13b8" />
 -->
<!-- ![List Produk] <img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/e8a4c2c3-70d3-4707-a491-1b7b9c15eded" />
 -->

### Kesimpulan Praktikum

Pertemuan kedua memberikan pemahaman tentang penggunaan widget dasar di Flutter, perbedaan `StatelessWidget` dan `StatefulWidget`, pengelolaan form input, navigasi antar halaman, serta penyusunan daftar item menggunakan `ListView`.
