# swift_get

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


TUGAS1

# Project Title

## Pengantar Widget Stateless dan Stateful di Flutter

Dalam Flutter, **Stateless Widget** adalah jenis widget yang tidak memiliki state atau keadaan yang dapat berubah. Setelah dibuat, tampilan dari widget ini akan tetap sama tanpa modifikasi sepanjang siklus hidupnya. Widget ini sangat sesuai digunakan ketika antarmuka pengguna (UI) tidak perlu diperbarui berdasarkan perubahan data. Contoh dari widget stateless dalam proyek ini meliputi `ItemCard` dan `InfoCard`, yang berfungsi untuk menampilkan informasi statis seperti ikon dan teks tanpa adanya interaksi dinamis.

Sebaliknya, **Stateful Widget** memiliki kemampuan untuk menyimpan dan mengelola keadaan yang dapat berubah selama siklus hidupnya. Ini berarti bahwa UI akan diperbarui setiap kali ada perubahan data atau kondisi yang berkaitan dengan widget tersebut. Stateful widget sangat berguna ketika aplikasi membutuhkan pembaruan tampilan yang tergantung pada interaksi pengguna atau perubahan data. Dalam proyek ini, kita akan menggunakan stateful widget untuk elemen yang memerlukan pembaruan dinamis, seperti penghitung atau elemen input yang dapat berubah. Perbedaan utama antara keduanya adalah stateless widget tidak menyimpan informasi yang dapat berubah, sedangkan stateful widget dapat menyimpan dan mengelola data yang berubah sesuai dengan interaksi pengguna.

## Rangkuman Widget yang Digunakan

- **MaterialApp**: Widget utama dalam aplikasi Flutter yang berfungsi untuk mengatur tema dan struktur aplikasi, termasuk penetapan warna utama (primarySwatch) dan tema keseluruhan.

- **Scaffold**: Menyediakan kerangka dasar untuk halaman Flutter, seperti `AppBar`, body, dan area floating action button. Dalam proyek ini, `Scaffold` digunakan untuk membuat layout dasar dengan `AppBar` dan konten di body.

- **AppBar**: Menampilkan bagian atas aplikasi yang berfungsi sebagai header, biasanya digunakan untuk judul atau ikon aksi. Dalam proyek ini, `AppBar` menampilkan judul "WeMart".

- **Padding**: Memberikan ruang di sekitar widget untuk memastikan jarak antar elemen di halaman. `Padding` digunakan di beberapa bagian untuk memberikan jarak di sekitar body `Scaffold` dan teks.

- **Column**: Mengatur widget dalam susunan vertikal (dari atas ke bawah). Digunakan untuk menyusun elemen-elemen UI secara vertikal, seperti teks sambutan dan grid tombol.

- **Row**: Mengatur widget dalam susunan horizontal (dari kiri ke kanan). Digunakan untuk menampilkan `InfoCard` secara horizontal, yang masing-masing berisi NPM, Nama, dan Kelas.

- **Text**: Menampilkan teks dalam aplikasi. Digunakan di berbagai lokasi, termasuk judul di `AppBar`, teks sambutan, dan konten di `InfoCard`.

- **Card**: Memberikan tampilan dengan elevation atau bayangan untuk menciptakan efek seperti kartu. `Card` digunakan dalam `InfoCard` untuk menampilkan informasi dengan cara yang terorganisir.

- **Center**: Memusatkan widget di dalam area yang tersedia. Digunakan untuk memastikan konten berada di tengah halaman.

- **GridView.count**: Menampilkan widget dalam format grid dengan jumlah kolom yang tetap. Digunakan untuk menampilkan `ItemCard` dalam tiga kolom.

- **InkWell**: Menambahkan efek ripple saat disentuh dan menangani gesture pengguna. `InkWell` digunakan dalam `ItemCard` untuk mendeteksi aksi `onTap` dan menampilkan SnackBar sebagai umpan balik.

- **SnackBar**: Menyampaikan pesan atau notifikasi singkat di bagian bawah layar. Digunakan untuk menunjukkan pesan ketika pengguna menekan tombol, seperti "Kamu telah menekan tombol Lihat Daftar Produk".

- **Container**: Memberikan kontrol penuh terhadap tata letak, termasuk margin, padding, dan warna latar. `Container` digunakan dalam `ItemCard` untuk mengatur padding serta menampilkan ikon dan teks.

- **Icon**: Menampilkan ikon dalam aplikasi, digunakan untuk menggambarkan ikon terkait tombol (seperti ikon mood, add, dan logout).

- **MediaQuery**: Memberikan informasi tentang ukuran layar perangkat, termasuk lebar dan tinggi. Digunakan di `InfoCard` untuk menyesuaikan lebar kartu sesuai ukuran layar.

- **SizedBox**: Menambahkan ruang atau jarak antar widget. Digunakan untuk menciptakan jarak antar elemen dalam `InfoCard`.

- **Material**: Sebagai bagian dari desain Material, widget ini memberikan tampilan seperti warna latar, efek ripple, dan elevation. Digunakan di `ItemCard` untuk membungkus `InkWell`.

## Fungsi setState()

Fungsi `setState()` digunakan dalam Stateful Widget untuk melakukan pembaruan otomatis pada UI ketika data atau keadaan widget berubah. Dengan memanggil `setState()`, Flutter akan melakukan rebuild pada widget yang relevan sehingga perubahan data dapat ditampilkan di layar. Dalam proyek ini, meskipun hanya menggunakan Stateless Widget, `setState()` akan diperlukan jika ada fitur yang membutuhkan perubahan data secara dinamis, seperti jumlah produk dalam keranjang.

## Perbandingan const dan final

`const` digunakan untuk nilai yang sudah ditentukan dan tidak dapat diubah sejak waktu kompilasi. Nilai `const` bersifat immutable dan harus didefinisikan di awal, contohnya `const Text('WeMart')`. Sementara itu, `final` digunakan untuk nilai yang hanya bisa ditetapkan sekali tetapi bisa diketahui saat runtime. Berbeda dengan `const`, `final` memungkinkan penyimpanan nilai yang mungkin baru diketahui ketika program dijalankan, seperti `final name = "Muhammad Fadhlan Arradhi"`. Perbedaan utamanya adalah `const` merupakan compile-time constant, sementara `final` adalah runtime constant.

## Langkah-Langkah Membuat Proyek Flutter

1. Buat proyek Flutter menggunakan perintah `flutter create <APP_NAME>` di direktori yang diinginkan.
2. Masuk ke subfolder nama produk tersebut dengan menggunakan `cd` untuk menjalankan Flutter.
3. Atur warna utama aplikasi di `main.dart`.
4. Buat file `menu.dart` untuk menyusun tampilan menu utama aplikasi.
5. Pindahkan class `MyHomePage` dan `_MyHomePageState` dari `main.dart` ke `menu.dart`.
6. Ubah widget di `menu.dart` menjadi Stateless:
   - Hapus semua konten dari class `MyHomePage`, termasuk konstruktor, variabel, komentar, dan method `createState()`.
   - Ubah `extends StatefulWidget` menjadi `extends StatelessWidget`.
   - Tambahkan konstruktor `MyHomePage({super.key});`.
   - Hapus seluruh class `_MyHomePageState`.
   - Tambahkan widget build.

Setelah melakukan perubahan menjadi Stateless, kita akan menambahkan card sederhana untuk menampilkan informasi diri. Di dalam class `MyHomePage`, tambahkan variabel yang diperlukan. Selanjutnya, buat class `InfoCard` untuk menampilkan data diri dan menyesuaikan tampilannya. Kita juga akan membuat tiga tombol: tambah produk, hapus, dan login, dengan terlebih dahulu membuat kelas `ItemHomepage` untuk menyimpan informasi dari masing-masing tombol. Kemudian, buat objek tombol di `MyHomePage`, dan buat class `ItemCard` untuk mengatur desain tombol tersebut.

Untuk mempercantik tampilan, setiap tombol akan memiliki warna yang berbeda dan menampilkan pesan pop-up saat tombol diklik. Pertama, tambahkan atribut `Color` pada class `ItemHomepage`, dan konfigurasikan warna saat objek tombol dibuat di `MyHomePage`. Di dalam `ItemCard`, atur warna menjadi `item.color`. Untuk menampilkan pesan pop-up ketika tombol ditekan, tambahkan kode berikut di `ItemCard`:

```
 child: InkWell(
        onTap: () {
          // Tampilkan SnackBar yang sesuai berdasarkan nama tombol
          String snackBarText;
          switch (item.name) {
            case "Lihat Daftar Produk":
              snackBarText = "Kamu telah menekan tombol Lihat Daftar Produk";
              break;
            case "Tambah Produk":
              snackBarText = "Kamu telah menekan tombol Tambah Produk";
              break;
            case "Logout":
              snackBarText = "Kamu telah menekan tombol Logout";
              break;
            default:
              snackBarText = "Kamu telah menekan tombol";
          }
```