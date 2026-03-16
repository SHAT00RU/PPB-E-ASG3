# My First App 📱

Sebuah aplikasi Flutter sederhana yang dibangun untuk mendemonstrasikan penggunaan dan penyusunan basic widgets dalam Flutter. Aplikasi ini menampilkan antarmuka statis berupa gambar, teks, dan beberapa ikon kategori yang disusun secara rapi.

## 🚀 Gambaran Proyek

Proyek ini adalah contoh implementasi antarmuka pengguna (UI) dasar di Flutter. Struktur kodenya berfokus pada penggunaan layout vertikal dan horizontal, serta kustomisasi ruang (padding) dan warna menggunakan _hex codes_.

## 🧩 Penjelasan Struktur Widget

Berikut adalah penjelasan untuk setiap widget yang digunakan dalam *source code* aplikasi ini:

### 1. Root & Layout Dasar
* **`MaterialApp`**: Widget utama yang membungkus seluruh aplikasi. Widget ini mengatur tema dasar aplikasi agar mengikuti standar Material Design. Di sini juga disematkan `debugShowCheckedModeBanner: true` (yang biasanya di-set `false` untuk produksi) dan menentukan `HomePage` sebagai halaman awal.
* **`Scaffold`**: Menyediakan kerangka visual dasar bergaya Material untuk halaman `HomePage`. Di sini, widget ini digunakan untuk mengatur warna latar belakang halaman menjadi abu-abu terang (`Colors.grey[200]`).
* **`AppBar`**: Bagian header atau bilah aplikasi di bagian atas layar. Menampilkan teks judul "My first app" di tengah (`centerTitle: true`) dan menggunakan warna latar khusus (`Color(0xFFE9CC7A)`).

### 2. Layout & Spacing
* **`Padding`**: Membungkus seluruh konten body untuk memberikan jarak/ruang kosong sebesar 16 piksel di seluruh sisi luarnya (`EdgeInsets.all(16)`).
* **`Column`**: Widget layout yang menyusun anak-anaknya (*children*) secara vertikal dari atas ke bawah. Ini adalah tulang punggung dari struktur UI di halaman ini.
* **`Row`**: Widget layout yang menyusun anak-anaknya secara horizontal dari kiri ke kanan. Digunakan pada bagian bawah layar untuk menyejajarkan tiga ikon (Food, Scenery, People) dengan jarak yang merata (`mainAxisAlignment: MainAxisAlignment.spaceEvenly`).
* **`SizedBox`**: Digunakan secara khusus untuk memberikan jarak kosong (margin) vertikal sebesar 20 piksel antar elemen di dalam `Column`.

### 3. Container & Konten Visual
* **`Container`**: Widget serbaguna yang sangat sering digunakan dalam aplikasi ini untuk membuat kotak dengan properti desain tertentu:
    * **Container Pertama (Gambar)**: Memiliki warna latar biru muda (`Color(0xFFAED6DB)`) dan *padding* internal 20 piksel, berfungsi sebagai bingkai untuk gambar.
    * **Container Kedua (Teks)**: Memiliki lebar penuh (`width: double.infinity`), warna latar merah muda (`Color(0xFFE6A8B8)`), dan *padding* 15 piksel untuk membungkus teks pertanyaan.
    * **Container Ketiga (Ikon)**: Memiliki warna latar kuning keemasan (`Color(0xFFE9CC7A)`) dan *padding* vertikal 20 piksel untuk membungkus kumpulan `Row` ikon.
* **`Image.network`**: Menampilkan gambar yang diambil secara langsung dari internet (URL `picsum.photos`). Diatur agar memiliki tinggi 200 piksel, lebar mengikuti layar (`double.infinity`), dan dipotong secara proporsional agar pas dengan kotaknya (`fit: BoxFit.cover`).
* **`Text`**: Menampilkan string teks di layar. Digunakan di `AppBar`, pertanyaan di tengah layar, dan label di bawah masing-masing ikon.
* **`Icon`**: Menampilkan gambar ikon berbasis vektor dari bawaan Material Design Flutter (`Icons.restaurant`, `Icons.landscape`, `Icons.person`).

---

## 🛠️ Cara Menjalankan Aplikasi

1. Pastikan Flutter SDK sudah terpasang di komputermu.
2. Clone repositori ini.
3. Buka terminal dan arahkan ke direktori proyek.
4. Jalankan perintah `flutter pub get` untuk memastikan semua *dependencies* siap.
5. Jalankan `flutter run` untuk membuka aplikasi di emulator atau perangkat fisik.
