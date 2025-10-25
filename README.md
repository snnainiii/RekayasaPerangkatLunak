# ☕ KopiBeans — Sistem Penjualan Biji Kopi Online

![HTML](https://img.shields.io/badge/HTML-E34F26?logo=html5&logoColor=white&style=for-the-badge)
![CSS](https://img.shields.io/badge/CSS-2965f1?logo=css3&logoColor=white&style=for-the-badge)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black&style=for-the-badge)
![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white&style=for-the-badge)
![MySQL](https://img.shields.io/badge/MySQL-005C84?logo=mysql&logoColor=white&style=for-the-badge)

---

## 📌 Ringkasan Proyek
**KopiBeans** adalah sistem **e-commerce berbasis web** yang dirancang untuk mempermudah transaksi jual beli biji kopi secara online.  
Aplikasi ini menyediakan fitur untuk **pelanggan** membeli berbagai jenis kopi, serta **admin** dalam mengelola produk, kategori, transaksi, dan pengguna.

---

## 🎯 Tujuan Sistem
- Mempermudah pelanggan memperoleh biji kopi dari berbagai daerah.
- Mengoptimalkan manajemen data produk dan transaksi.
- Menyediakan sistem transaksi online cepat, aman, dan efisien.
- Memberikan pengalaman pengguna yang modern & interaktif.

---

## ⚙️ Fitur Utama

### 👤 Pengguna
- Registrasi & Login akun  
- Melihat produk berdasarkan kategori  
- Menambahkan produk ke keranjang  
- Checkout & unggah bukti pembayaran  
- Melihat riwayat transaksi  
- Memberikan rating dan ulasan produk  
- Mengelola profil pengguna  

### 🧑‍💼 Admin
- Login & autentikasi admin  
- Dashboard statistik penjualan  
- CRUD produk, kategori, dan user  
- Kelola promo, flash sale, & banner  
- Verifikasi transaksi & laporan penjualan  
- Meninjau ulasan pelanggan 

---

## 🧠 Analisis Sistem

### **Fungsional**
- Autentikasi user & admin  
- Menampilkan daftar produk dan kategori  
- Menyimpan transaksi dan bukti pembayaran  
- Menampilkan laporan pendapatan  

### **Non-Fungsional**
- Desain responsif dan user-friendly  
- Basis data aman (MySQL)  
- Performa optimal untuk deployment lokal (XAMPP)

---

## 🏗️ Desain Sistem

### 📊 Use Case Diagram
Menjelaskan interaksi utama antara *User* dan *Admin*, termasuk login, melihat produk, transaksi, hingga pengelolaan data oleh admin.

### 🧭 Activity Diagram
Menunjukkan alur proses dari:
- Registrasi & Login  
- Transaksi & Checkout  
- Manajemen Produk  
- Logout

### 🗃️ Entity Relationship Diagram (ERD)
Struktur utama database:
| Entitas | Deskripsi |
|----------|------------|
| **User** | Data pengguna sistem |
| **Produk** | Data biji kopi |
| **Kategori** | Klasifikasi produk |
| **Transaksi** | Data pemesanan pengguna |
| **Detail_Transaksi** | Rincian tiap pembelian |
| **Promo** | Data promo & flash sale |
| **Ulasan** | Rating & komentar produk |

---

## 💾 Implementasi Teknis

### 🔹 **Frontend**
- **HTML**, **CSS**, **Bootstrap** untuk tampilan responsif.  
- **JavaScript** untuk validasi dan interaksi dinamis.  

### 🔹 **Backend**
- **PHP Native** dengan pendekatan modular (mirip MVC).  
- **MySQL** sebagai database utama.  
- Implementasi **Stored Procedure**, **Trigger**, **View**, dan **Cursor** untuk otomatisasi proses transaksi.

### 🔹 **Fitur Database**
- *Stored Procedure* → Mengatur proses penjualan otomatis.  
- *Trigger* → Mengurangi stok produk setelah transaksi.  
- *View* → Membuat laporan penjualan harian.  
- *Cursor* → Iterasi untuk perhitungan total transaksi.

---

## 💡 Alur Sistem
1. Pengguna mendaftar dan login.  
2. Memilih produk dan menambah ke keranjang.  
3. Checkout dan unggah bukti pembayaran.  
4. Admin memverifikasi transaksi.  
5. Status transaksi diperbarui, user mendapat notifikasi.  
6. User memberi rating setelah pesanan diterima.  

---

### 🧍 Pengguna
- Halaman Register/Login  
- Homepage & kategori produk  
- Detail produk  
- Keranjang & Checkout  
- Riwayat transaksi  
- Profil pengguna  

### 🧑‍💼 Admin
- Dashboard admin  
- Kelola produk, kategori, user  
- Promo & flash sale  
- Transaksi & laporan  

---

## 🖼️ **Preview Tampilan Aplikasi**

Berikut adalah beberapa tampilan antarmuka dari sistem **KopiBeans** yang telah diimplementasikan.

---

### 🏠 **Halaman Beranda (Home Page)**
Menampilkan halaman utama aplikasi yang terdiri dari tiga bagian utama:
1. **Header** — berisi navigasi utama, logo, dan akses cepat ke fitur penting.
2. **Content** — menampilkan daftar produk kopi, kategori, dan promo unggulan.
3. **Footer** — berisi informasi kontak, hak cipta, dan tautan tambahan.

| Header | Content | Footer |
|:--:|:--:|:--:|
| ![Home Header](assets/image/home_header.png) | ![Home Content](assets/image/home_content.png) | ![Home Footer](assets/image/home_footer.png) |

---

### ⚡ **Halaman Flash Sale**
Menampilkan produk-produk yang sedang dalam periode diskon dengan waktu terbatas.
Pengguna dapat dengan cepat menambahkan produk ke keranjang sebelum waktu promo berakhir.

![Flash Sale Page](assets/image/flash_sale.png)

---

### ⭐ **Halaman Rating Produk**
Menampilkan fitur penilaian dan ulasan pelanggan terhadap produk yang telah dibeli.
Membantu pengguna lain dalam menentukan pilihan terbaik berdasarkan pengalaman pembeli sebelumnya.

![Rating Page](assets/image/rating.png)

---

### 📊 **Dashboard Admin**
Menampilkan statistik penjualan, jumlah pengguna, serta laporan transaksi harian.
Admin juga dapat memantau performa produk dan mengelola data toko secara keseluruhan.

![Admin Dashboard](assets/image/admin_dashboard.png)


