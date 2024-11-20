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

## TUGAS 8

1. **Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**
    
    `const` digunakan untuk mendefinisikan objek yang tidak akan berubah selama aplikasi berjalan. Keuntungannya adalah penghematan memori karena objek `const` hanya dibuat sekali dan bisa dipakai ulang. `const` sebaiknya digunakan untuk widget atau data yang statis, misalnya pada teks atau ikon. Tetapi, tidak cocok untuk elemen yang berubah-ubah nilainya atau interaktif, seperti tombol dengan aksi dinamis.
    
2. **Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**
    
    `Column` menata elemen secara vertikal, sedangkan `Row` menata elemen secara horizontal.
    
    - **Contoh Column:**
    
    ```dart
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nama: $_name'),
        Text('Deskripsi: $_description'),
        Text('Harga: $_price'),
        Text('Sweet level: $_sweetlevel'),
      ],
    ),
    ```
    
    - **Contoh Row:**
    
    ```dart
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InfoCard(title: 'NPM', content: npm),
        InfoCard(title: 'Name', content: name),
        InfoCard(title: 'Class', content: className),
      ],
    ),
    
    ```
    
3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**
    
    Pada form ini, saya pakai TextFormField untuk input teks (nama, deskripsi, harga, dan sweet level). Ada elemen lain di Flutter seperti Checkbox, DropdownButton, atau Slider, tetapi tidak saya pakai karena input di form ini fokusnya teks. Checkbox atau Dropdown biasanya lebih cocok buat pilihan terbatas, sementara form ini lebih ke input bebas.
    
4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**
    
    Di Flutter, kita bisa atur tema lewat `ThemeData` di `MaterialApp`. Misalnya, saya atur `colorScheme` untuk bikin warna aplikasi seragam. Dengan cara ini, elemen-elemen seperti AppBar dan tombol pakai warna yang konsisten. Contoh pengaturan tema:
    
    ```dart
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink,).copyWith(secondary: Colors.pink[400]),
    )
    
    ```
    
5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**
    Untuk navigasi antar halaman, saya menggunakan `Navigator.push` ketika ingin berpindah ke halaman lain dan menyimpan riwayat halaman sebelumnya. Jika saya ingin mengganti halaman tanpa memberikan opsi untuk kembali, saya menggunakan `Navigator.pushReplacement`, yang menggantikan halaman saat ini dengan halaman baru. Selain itu, saya juga menggunakan `Navigator.pop` untuk kembali ke halaman sebelumnya dalam tumpukan halaman ketika pengguna menekan tombol "kembali" atau sesuai kebutuhan navigasi lainnya.

## TUGAS 9
1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
    
    Membuat model untuk pengambilan dan pengiriman data JSON sangat penting karena model membantu mengatur dan memetakan data dengan struktur yang jelas, sehingga memudahkan proses pengelolaan data. Dengan model, data JSON dapat diubah menjadi objek yang terdefinisi secara eksplisit, sehingga lebih aman dan mudah digunakan dalam kode. Model ini juga memungkinkan validasi otomatis untuk memastikan data yang diterima atau dikirim sudah sesuai dengan spesifikasi yang diharapkan. Jika tidak menggunakan model, pengelolaan data menjadi rentan terhadap kesalahan seperti field yang hilang atau salah nama, terutama ketika data langsung ditangani dalam bentuk map atau list. Meskipun tidak selalu terjadi error tanpa model, risiko ketidaksesuaian struktur data akan meningkat, yang pada akhirnya dapat menyebabkan bug atau malfungsi dalam aplikasi.
    
2. Jelaskan fungsi dari library *http* yang sudah kamu implementasikan pada tugas ini
    
    Library **`http`** pada Flutter digunakan untuk mengelola komunikasi data antara aplikasi dan server melalui protokol HTTP. Dengan library ini, aplikasi dapat mengirim permintaan seperti **GET** untuk mengambil data, **POST** untuk mengirim data, serta **PUT** dan **DELETE** untuk memperbarui atau menghapus data di server. Dalam konteks tugas ini, **`http`** dimanfaatkan untuk menghubungkan aplikasi Flutter ke server Django, memungkinkan pengambilan data dari web service dan pengiriman data seperti input formulir pengguna ke server.
    
3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa *instance* CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    
    CookieRequest adalah mekanisme untuk menyimpan dan mengelola cookie yang digunakan dalam sesi autentikasi. Fungsi utamanya adalah menyimpan informasi sesi pengguna, seperti token atau ID sesi, agar dapat digunakan dalam permintaan HTTP berikutnya tanpa harus memasukkan ulang kredensial. Dengan CookieRequest, pengguna tetap dapat mengakses fitur yang membutuhkan autentikasi tanpa harus login berulang kali selama sesi berlangsung. Instance CookieRequest perlu dibagikan ke semua komponen aplikasi untuk memastikan konsistensi data sesi di seluruh aplikasi. Dengan berbagi instance ini, semua bagian aplikasi memiliki akses ke informasi sesi yang sama, sehingga autentikasi dan akses data menjadi lebih efisien.
    
4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    
    Proses pengiriman data pada Flutter dimulai dari input yang diberikan oleh pengguna melalui widget seperti `TextField`. Data yang dimasukkan kemudian diambil dari widget tersebut dan divalidasi untuk memastikan format dan isinya sesuai dengan kebutuhan. Setelah itu, data dikirim ke server menggunakan request HTTP, biasanya dalam format JSON, dengan memanfaatkan library *http* atau CookieRequest. Server, seperti Django, akan memproses data tersebut, menyimpannya di database, atau mengembalikan respons berupa data yang diminta. Respons ini kemudian di-*decode* oleh Flutter, diubah ke dalam model data, dan ditampilkan ke layar melalui widget seperti `ListView` atau `Text`.
    
5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    
    Proses autentikasi dimulai ketika pengguna memasukkan data seperti username dan password ke dalam form pada Flutter. Data ini kemudian dikirim ke server Django melalui request POST. Untuk proses register, Django akan menyimpan data akun baru ke database setelah memverifikasi inputnya. Dalam login, Django memeriksa kredensial yang dimasukkan, dan jika valid, Django akan membuat sesi atau memberikan cookie kepada pengguna. Cookie ini disimpan di aplikasi Flutter menggunakan CookieRequest untuk memastikan pengguna tetap terautentikasi selama sesi berlangsung. Logout dilakukan dengan mengirim request ke endpoint logout Django, yang akan menghapus sesi dan cookie dari server, sementara aplikasi Flutter membersihkan token atau cookie yang disimpan. Setelah login berhasil, Flutter menampilkan halaman menu atau fitur yang hanya dapat diakses oleh pengguna yang telah login, dengan memastikan bahwa informasi sesi digunakan untuk validasi setiap permintaan selanjutnya. Proses ini mengintegrasikan Django sebagai backend dan Flutter sebagai frontend secara mulus, sehingga pengalaman pengguna tetap nyaman dan aman.
    
6. Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).
    
    Berikut adalah penjelasan langkah-langkah implementasinya:
    
    **1. Registrasi Akun**
    
    Pada backend Django, tambahkan fungsi **register** di `views.py` untuk memproses pembuatan akun baru, lalu tambahkan path `/register/` di `authentication/urls.py`. Di Flutter, buat file baru bernama `register.dart` di direktori `screens`, berisi form input **username**, **password**, dan **confirm password**, yang dikirimkan ke server menggunakan **POST**.
    
    **2. Halaman Login**
    
    Tambahkan fungsi **login** pada `views.py` di Django, dan tambahkan path `/login/` di `authentication/urls.py`. Di Flutter, buat file `login.dart` dengan form untuk **username** dan **password**. Pada file `main.dart`, ubah properti `home` menjadi `const LoginPage()` agar aplikasi langsung menuju halaman login.
    
    **3. Integrasi Autentikasi**
    
    Gunakan package `pbp_django_auth` di Flutter untuk mengelola autentikasi. Install dengan:
    
    ```bash
    flutter pub add provider
    flutter pub add pbp_django_auth
    
    ```
    
    Gunakan `Provider` di `main.dart` untuk menyediakan instance `CookieRequest` ke seluruh widget aplikasi.
    
    **4. Model Kustom**
    
    Ekspor data JSON dari Django dan gunakan Quicktype untuk membuat model Dart. Buat folder `models/` di Flutter, lalu tambahkan file model, misalnya `product_entry.dart`, yang berisi kode hasil Quicktype.
    
    **5. Halaman Daftar Item**
    
    Di Flutter, buat file baru `list_productentry.dart` di `screens`. Gunakan `FutureBuilder` untuk mengambil data dari endpoint Django menggunakan `http.get` atau `CookieRequest.get`. Tampilkan atribut seperti **name**, **price**, dan **description** menggunakan `ListView.builder`.
    
    **6. Halaman Detail Item**
    
    Buat file `product_detail.dart` di `screens` untuk menampilkan detail item. Tambahkan parameter `ProductEntry` sebagai input. Tampilkan semua atribut model di halaman detail. Tambahkan tombol **Back to List** untuk kembali ke halaman daftar.
    
    **7. Filter Item Berdasarkan Pengguna**
    
    Pada backend Django, tambahkan filter pada query di endpoint JSON untuk hanya menampilkan item terkait pengguna login:
    
    ```python
    items = Item.objects.filter(user=request.user)
    
    ```
    
    Di Flutter, gunakan `CookieRequest` untuk memastikan permintaan GET membawa sesi pengguna login. Backend secara otomatis memfilter data, dan Flutter menampilkan item menggunakan `ListView.builder`.