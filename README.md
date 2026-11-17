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
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/254a44c9-e846-476f-9d75-65e180da05a1" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/e474022f-d41f-4fd7-9ab2-237cc8b65df7" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/37afe799-5372-4f94-beb3-1773967e980e" />


### Kesimpulan Praktikum

Pertemuan kedua memberikan pemahaman tentang penggunaan widget dasar di Flutter, perbedaan `StatelessWidget` dan `StatefulWidget`, pengelolaan form input, navigasi antar halaman, serta penyusunan daftar item menggunakan `ListView`.

## 📝 Tugas Pertemuan 3: Routes, Side Menu, Login dan Local Storage
**Tanggal**: Rabu, 4 November 2026

### Deskripsi Teknis & Non-Teknis
* **Non-Teknis**: Implementasi sistem autentikasi pengguna (login), manajemen penyimpanan data lokal (*local storage*) pada perangkat, pengelolaan alur navigasi (*routing*), serta pembuatan menu samping (*drawer / side menu*) untuk navigasi multi-halaman.
* **Teknis**:
  * **Menambahkan Dependency**: Menambahkan package `shared_preferences` ke dalam file `pubspec.yaml` untuk kebutuhan penyimpanan sesi pengguna secara persisten pada penyimpanan lokal perangkat.
  * **Halaman Login (`login_page.dart`)**:
    * Menggunakan `StatefulWidget` dengan `TextEditingController` untuk mengontrol input username dan password.
    * Mengimplementasikan fungsi `_saveUsername()` untuk menyimpan username ke dalam local storage via `SharedPreferences`.
    * Mengimplementasikan `_showInput()` untuk merender `TextField` dengan placeholder dan opsi sensor password (`obscureText`).
    * Mengimplementasikan `_showDialog()` untuk menampilkan pop-up konfirmasi (`AlertDialog`).
    * Menambahkan logika autentikasi: jika username dan password adalah `admin`, sistem menyimpan sesi pengguna dan berpindah ke `HomePage`; jika tidak sesuai, sistem menampilkan dialog kesalahan.
  * **Konfigurasi Routing Awal (`main.dart`)**:
    * Mengonfigurasi `MaterialApp` dengan tema Material klasik biru (`primarySwatch: Colors.blue`, `useMaterial3: false`) agar serasi dengan desain modul.
    * Mengatur properti `home` agar langsung memuat `LoginPage`.
  * **Halaman Utama (`home_page.dart`)**:
    * Menggunakan fungsi asinkronus `_loadUsername()` untuk membaca data username yang telah tersimpan di `SharedPreferences` saat halaman dimuat.
    * Menampilkan teks sambutan dengan nama user di tengah layar (`Center`).
    * Memasang properti `drawer` dengan widget `Sidemenu` untuk navigasi.
  * **Side Menu / Drawer (`sidemenu.dart`)**:
    * Membangun menu navigasi laci menggunakan `Drawer`, `ListView`, dan `DrawerHeader`.
    * Menyediakan opsi menu `ListTile` untuk navigasi ke halaman **Home** (`HomePage`) dan halaman **About** (`AboutPage`) menggunakan `Navigator.push`.
  * **Halaman About (`about_page.dart`)**:
    * Membuat halaman informasi aplikasi dengan `AppBar`, teks konten di bagian `Center`, serta menyertakan `drawer` agar drawer menu tetap dapat diakses dari halaman ini.

### Struktur Folder
```text
lib/
├── main.dart
├── login_page.dart
├── home_page.dart
├── sidemenu.dart
├── about_page.dart
├── hello_world.dart
├── column_widget.dart
├── row_widget.dart
└── ui/
    ├── produk_form.dart
    ├── produk_detail.dart
    └── produk_page.dart
```

### Kredensial Login (Testing)
* **Username**: `admin`
* **Password**: `admin`

### Cara Menjalankan
```bash
flutter pub get
flutter run
```

### Hasil / Screenshot
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/9fd07499-0b69-4a87-b87c-ab0b96506175" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/a3cd7652-d5fd-4791-978d-2d4e7217287d" />


### Kesimpulan Praktikum
Pertemuan ketiga memberikan pemahaman mendalam mengenai pembuatan sistem autentikasi sederhana pada Flutter, penggunaan `shared_preferences` untuk menyimpan dan membaca data lokal perangkat, implementasi dialog interaktif (`AlertDialog`), serta pembuatan navigasi hierarkis dan menu drawer samping (`Drawer` & `ListTile`) untuk menghubungkan berbagai halaman aplikasi.
