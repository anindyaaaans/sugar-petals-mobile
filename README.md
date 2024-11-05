## TUGAS 7

1. **Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**
    - **Stateless widget** adalah widget yang tidak memiliki state atau kondisi yang berubah. Widget ini cocok digunakan untuk elemen UI yang sifatnya tetap, seperti `Text` atau `Icon`. Pada tugas ini, `MyHomePage` diubah menjadi stateless karena tidak memerlukan perubahan kondisi selama aplikasi berjalan.
    - **Stateful widget** adalah widget yang memiliki state yang dapat berubah. Jika state berubah, widget akan dirender ulang menggunakan `setState()`. Widget ini cocok untuk elemen UI yang dinamis, misalnya tombol dengan fungsi yang berubah.
2. **Widget yang Digunakan di Proyek:**
    - **Scaffold**: Struktur dasar halaman dengan `AppBar` dan `body`, yang menjadi basis layout aplikasi.
    - **AppBar**: Menampilkan header di bagian atas halaman aplikasi, pada tutorial ini menampilkan "Sugar Petals".
    - **GridView**: Menyusun beberapa elemen dalam bentuk grid. Digunakan untuk menampilkan tombol `ItemCard`.
    - **Row** dan **Column**: Untuk mengatur tata letak widget dalam susunan horizontal dan vertikal. `Row` digunakan untuk menyusun `InfoCard`, sedangkan `Column` untuk konten halaman lainnya.
    - **Icon dan Text**: Menampilkan ikon dan teks di tombol dalam `ItemCard`.
    - **SnackBar**: Digunakan untuk menampilkan notifikasi singkat di bagian bawah layar ketika tombol ditekan.
3. **Fungsi setState()**:
    - Pada proyek ini, fungsi `setState()` tidak digunakan karena `MyHomePage` telah diubah menjadi `StatelessWidget`. Biasanya, `setState()` berfungsi untuk merender ulang tampilan ketika ada perubahan pada variabel dalam `StatefulWidget`.
4. **Perbedaan const dan final:**
    - `const`: Konstanta yang nilainya ditetapkan pada saat kompilasi. Nilai tidak bisa diubah dan cocok untuk elemen yang benar-benar statis, seperti:
    
    ```jsx
    const TextStyle(color: Colors.white)
    ```
    
    - `final`: Variabel yang nilainya diatur saat runtime, tetapi tidak bisa diubah setelah diinisialisasi. Contoh:
    
    ```jsx
    final String npm = '2306165805'; // NPM
    final String name = 'Anindya Nabila Syifa'; // Nama
    final String className = 'PBP C'; // Kelas
    ```
    
5. **Implementasi Checklis**
    
    #### 1. Membuat Program Flutter Baru
    
    Saya memulai dengan membuat proyek Flutter baru menggunakan perintah:
    
    ```bash
    flutter create sugar_petals
    
    ```
    
    Setelah proyek berhasil dibuat, saya membuka direktori proyek dan mulai mengedit file yang diperlukan, terutama `main.dart` dan menambahkan file baru `menu.dart` untuk mengatur tampilan halaman utama.
    
    #### 2. Membuat Tiga Tombol Sederhana
    
    Di dalam kelas `MyHomePage`, saya membuat daftar item dengan tiga tombol yang sesuai dengan tugas yang diberikan. Saya menggunakan `ItemHomepage` untuk menyimpan informasi tentang setiap tombol, yaitu judul, ikon, dan warna. Berikut adalah cara saya mendefinisikan daftar item:
    
    ```dart
    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.mood, Color(0xFFE91E63)),
        ItemHomepage("Tambah Produk", Icons.add, Color(0xFFEC407A)),
        ItemHomepage("Logout", Icons.logout, Color(0xFFF06292)),
    ];
    
    ```
    
    #### 3. Mengimplementasikan Warna yang Berbeda untuk Setiap Tombol
    
    Saya memberikan warna yang berbeda untuk setiap tombol dengan menetapkan nilai `Color` yang sesuai saat membuat objek `ItemHomepage`. Misalnya, tombol "Lihat Daftar Produk" memiliki warna merah muda, "Tambah Produk" memiliki warna pink, dan "Logout" memiliki warna yang lebih terang.
    
    #### 4. Memunculkan Snackbar ketika Tombol Ditekan
    
    Untuk menangani interaksi pengguna, saya menggunakan widget `InkWell` di dalam `ItemCard` untuk setiap tombol. Ketika tombol ditekan, saya menampilkan pesan `Snackbar` yang sesuai dengan tombol yang ditekan. Berikut adalah implementasinya di dalam `ItemCard`:
    
    ```dart
    onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Kamu telah menekan tombol ${item.name}!"),
        ));
    },
    
    ```