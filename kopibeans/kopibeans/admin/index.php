<?php
include '../config.php';

$page_admin = 'dashboard';

if (isset($_COOKIE['login_admin'])) {
    if ($akun_adm == 'false') {
        header("location: " . $url . "system/admin/logout");
    }
} else {
    header("location: " . $url . "admin/login/");
}

$time_today = date("Y-m-d");

// JUMLAH USER
$sj_user_adm = $server->query("SELECT * FROM `akun`");
$jumlah_user_adm = mysqli_num_rows($sj_user_adm);

// JUMLAH USER HARI INI
$sj_user_today_adm = $server->query("SELECT * FROM `akun` WHERE `waktu` LIKE '$time_today%' ORDER BY `akun`.`id` DESC");
$jumlah_user_today_adm = mysqli_num_rows($sj_user_today_adm);

// JUMLAH TRANSAKSI
$sj_transaksi_adm = $server->query("SELECT * FROM `invoice` WHERE `transaction`='settlement'");
$jumlah_transaksi_adm = mysqli_num_rows($sj_transaksi_adm);

// JUMLAH TRANSAKSI HARI INI
$sj_transaksi_today_adm = $server->query("SELECT * FROM `akun`, `iklan`, `invoice` WHERE invoice.id_iklan=iklan.id AND invoice.id_user=akun.id AND `transaction`='settlement' AND `waktu_transaksi`LIKE'$time_today%' ORDER BY `invoice`.`idinvoice` DESC");
$jumlah_transaksi_today_adm = mysqli_num_rows($sj_transaksi_today_adm);

// JUMLAH TRANSAKSI
$sj_produk_adm = $server->query("SELECT * FROM `iklan`");
$jumlah_produk_adm = mysqli_num_rows($sj_produk_adm);

// JUMLAH KATEGORI
$sj_kategori_adm = $server->query("SELECT * FROM `kategori`");
$jumlah_kategori_adm = mysqli_num_rows($sj_kategori_adm);

// Inisialisasi variabel pencarian
$tanggal = "";
$bulan = "";
$tahun = "";

// Pengecekan jika tombol "Cari" diklik
if (isset($_POST["cari"])) {
    $tanggal = $_POST["tanggal"];
    $bulan = $_POST["bulan"];
    $tahun = $_POST["tahun"];
}

// Pengecekan jika tombol "Reset" diklik
if (isset($_POST["reset"])) {
    $tanggal = "";
    $bulan = "";
    $tahun = "";
}

// Query untuk mendapatkan data penjualan berdasarkan tanggal, bulan, dan tahun
$whereClause = "";
if (!empty($tanggal) && !empty($bulan) && !empty($tahun)) {
    $tanggal_query = $tahun . "-" . $bulan . "-" . $tanggal;
    $whereClause = "WHERE DATE(i.waktu) = '$tanggal_query'";
} elseif (!empty($bulan) && !empty($tahun)) {
    $whereClause = "WHERE MONTH(i.waktu) = $bulan AND YEAR(i.waktu) = $tahun";
} elseif (!empty($tahun)) {
    $whereClause = "WHERE YEAR(i.waktu) = $tahun";
}

$sql = "SELECT i.idinvoice, i.id_iklan, i.id_user, i.jumlah, i.harga_i, i.waktu, ik.judul, ik.id as id_iklan, a.nama_lengkap
        FROM invoice i
        INNER JOIN iklan ik ON i.id_iklan = ik.id
        INNER JOIN akun a ON i.id_user = a.id
        $whereClause";

// Membuat query untuk mendapatkan jumlah penghasilan per hari
$query_perhari = "SELECT SUM(harga_i) AS total_perhari
                  FROM invoice i
                  $whereClause";
$result_perhari = $server->query($query_perhari);
$row_perhari = $result_perhari->fetch_assoc();
$total_perhari = $row_perhari['total_perhari'];

// Membuat query untuk mendapatkan jumlah penghasilan per bulan
$query_perbulan = "SELECT SUM(harga_i) AS total_perbulan
                   FROM invoice i
                   $whereClause";
$result_perbulan = $server->query($query_perbulan);
$row_perbulan = $result_perbulan->fetch_assoc();
$total_perbulan = $row_perbulan['total_perbulan'];

$result = $server->query($sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Admin</title>
    <link rel="icon" href="../assets/icons/<?php echo $logo; ?>" type="image/svg">
    <link rel="stylesheet" href="../assets/css/admin/index.css">
</head>

<body>
    <div class="admin">
        <?php include './partials/menu.php'; ?>
        <div class="content_admin">
            <h1 class="title_content_admin">Dashboard</h1>
            <div class="isi_content_admin">
                <!-- CONTENT -->
                <div class="menu_jumlah_adm">
                    <div class="isi_menu_jumlah_adm">
                        <i class="ri-user-3-fill"></i>
                        <div class="box_text_menu_jumlah_adm">
                            <p>Jumlah User</p>
                            <h1><?php echo number_format($jumlah_user_adm, 0, ".", "."); ?></h1>
                        </div>
                    </div>
                    <div class="isi_menu_jumlah_adm">
                        <i class="ri-shopping-bag-fill"></i>
                        <div class="box_text_menu_jumlah_adm">
                            <p>Jumlah Transaksi</p>
                            <h1><?php echo number_format($jumlah_transaksi_adm, 0, ".", "."); ?></h1>
                        </div>
                    </div>
                    <div class="isi_menu_jumlah_adm">
                        <i class="ri-archive-fill"></i>
                        <div class="box_text_menu_jumlah_adm">
                            <p>Jumlah Produk</p>
                            <h1><?php echo number_format($jumlah_produk_adm, 0, ".", "."); ?></h1>
                        </div>
                    </div>
                    <div class="isi_menu_jumlah_adm">
                        <i class="ri-file-list-2-fill"></i>
                        <div class="box_text_menu_jumlah_adm">
                            <p>Jumlah Kategori</p>
                            <h1><?php echo number_format($jumlah_kategori_adm, 0, ".", "."); ?></h1>
                        </div>
                    </div>
                </div>

                <div class="jumlah_today">
                    <div class="isi_jumlah_today">
                        <div class="head_isi_jumlah_today">
                            <h5>User Baru Hari Ini</h5>
                            <h5><?php echo number_format($jumlah_user_today_adm, 0, ".", "."); ?></h5>
                        </div>
                        <div class="content_jumlah_today">
                            <?php
                            while ($data_user_today = mysqli_fetch_assoc($sj_user_today_adm)) {
                                $exp_time_user_today = explode($time_today, $data_user_today['waktu']);
                            ?>
                            <div class="isi_content_jumlah_today">
                                <img src="../assets/image/profile/<?php echo $data_user_today['foto']; ?>">
                                <div class="text_isi_content_jumlah_today">
                                    <h3><?php echo $data_user_today['nama_lengkap']; ?></h3>
                                    <p><?php echo $data_user_today['email']; ?></p>
                                </div>
                                <p class="jam_icjt"><?php echo $exp_time_user_today[1]; ?></p>
                            </div>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                    <div class="isi_jumlah_today">
                        <div class="head_isi_jumlah_today">
                            <h5>Transaksi Baru Hari Ini</h5>
                            <h5><?php echo number_format($jumlah_transaksi_today_adm, 0, ".", "."); ?></h5>
                        </div>
                        <div class="content_jumlah_today">
                            <?php
                            while ($data_transaksi_today = mysqli_fetch_assoc($sj_transaksi_today_adm)) {
                                $exp_gambar_tt = explode(',' , $data_transaksi_today['gambar']);
                            ?>
                            <div class="isi_content_jumlah_today">
                                <img src="../assets/image/product/<?php echo $exp_gambar_tt[0]; ?>">
                                <div class="text_isi_content_jumlah_today">
                                    <h3><?php echo $data_transaksi_today['judul']; ?></h3>
                                    <p>Pembeli <?php echo $data_transaksi_today['nama_lengkap']; ?></p>
                                </div>
                                <p class="jam_icjt"><?php echo $data_transaksi_today['jumlah']; ?></p>
                            </div>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <br>
                <style>
                table {
                    border-collapse: collapse;
                    width: 100%;
                }

                th,
                td {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                }

                th {
                    background-color: #f2f2f2;
                }

                .search-button {
                    background-color: #ff5c5c;
                    color: #fff;
                    border: none;
                    padding: 10px 20px;
                    font-size: 16px;
                    font-weight: bold;
                    border-radius: 4px;
                    cursor: pointer;
                }

                label {
                    display: block;
                    margin-bottom: 5px;
                    font-weight: bold;
                }

                input[type="date"],
                .search-button {
                    padding: 6px;
                    border-radius: 4px;
                }

                .search-button {
                    margin-top: 10px;
                }

                .search-form {
                    display: flex;
                    align-items: center;
                }

                .search-form label,
                .search-form input[type="date"],
                .search-form .search-button {
                    margin-right: 10px;
                    margin-bottom: 10px;
                }

                .search-form .search-button {
                    margin-right: 10px;
                    margin-bottom: 20px;
                }
                </style>
                </head>

                <body>
                    <center>
                        <h1 style="color: #b34204;">Laporan Penjualan</h1>
                    </center><br>

                    <form method="GET" class="search-form">
                        <label for="tanggal_awal">Dari Tanggal:</label>
                        <input type="date" id="tanggal_awal" name="tanggal_awal">
                        <label for="tanggal_akhir">Hingga Tanggal:</label>
                        <input type="date" id="tanggal_akhir" name="tanggal_akhir">
                        <button type="submit" class="search-button">Cari</button>
                    </form>

                    <table>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Pelanggan</th>
                                <th>Tanggal</th>
                                <th>Jumlah Harga</th>
                                <th>Status Pengiriman</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
        // Kode koneksi ke database Anda disini
        $host = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'kopibeans';

        // Membuat koneksi ke database
        $conn = new mysqli($host, $username, $password, $database);

        // Memeriksa koneksi
        if ($conn->connect_error) {
          die("Koneksi database gagal: " . $conn->connect_error);
        }

        // Mendapatkan tanggal awal dan akhir dari form pencarian
        $tanggalAwal = $_GET['tanggal_awal'] ?? '';
        $tanggalAkhir = $_GET['tanggal_akhir'] ?? '';

        // Mengecek apakah ada rentang tanggal yang dimasukkan
        $rentangTanggal = '';
        if (!empty($tanggalAwal) && !empty($tanggalAkhir)) {
          $rentangTanggal = "AND i.waktu BETWEEN '$tanggalAwal' AND '$tanggalAkhir'";
        }

        // Query SQL untuk mengambil data laporan penjualan dengan rentang tanggal
        $query = "SELECT i.idinvoice AS 'No', a.nama_lengkap AS 'Nama Pelanggan', i.waktu AS 'Tanggal', SUM(i.harga_i * i.jumlah) AS 'Jumlah Harga', i.tipe_progress AS 'Status Pengiriman'
                  FROM invoice AS i
                  INNER JOIN akun AS a ON i.id_user = a.id
                  INNER JOIN iklan AS il ON i.id_iklan = il.id
                  WHERE 1=1 $rentangTanggal
                  GROUP BY i.idinvoice, a.nama_lengkap, i.waktu, i.tipe_progress
                  ORDER BY i.waktu DESC";
        
        // Eksekusi query
        $result = $conn->query($query);

        // Memeriksa apakah query berhasil dieksekusi
        if ($result) {
          $totalPenjualan = 0; // Inisialisasi variabel total penjualan
          $nomor = 1; // Inisialisasi nomor urut

          // Iterasi hasil query
          while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>".$nomor."</td>";
            echo "<td>".$row['Nama Pelanggan']."</td>";
            echo "<td>".$row['Tanggal']."</td>";
            echo "<td>".number_format($row['Jumlah Harga'], 0, ',', '.')."</td>"; // Menambahkan titik di nominal harga
            echo "<td>".$row['Status Pengiriman']."</td>";
            echo "</tr>";

            // Menambahkan jumlah penjualan ke total penjualan
            $totalPenjualan += $row['Jumlah Harga'];

            $nomor++; // Menambahkan nilai nomor urut setiap iterasi
          }

          // Menampilkan total penjualan di bagian paling bawah
          echo "<tr>";
          echo "<td colspan='3'></td>";
          echo "<td><strong>Total Penjualan</strong></td>";
          echo "<td><strong>".number_format($totalPenjualan, 0, ',', '.')."</strong></td>"; // Menambahkan titik di total penjualan
          echo "</tr>";
        } else {
          echo "Error: " . $query . "<br>" . $conn->error;
        }

        // Menutup koneksi
        $conn->close();
      ?>
                        </tbody>
                    </table>

                </body>

</html>

</html>