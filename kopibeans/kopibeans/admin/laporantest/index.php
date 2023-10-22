<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'toko_senjateduhstorev1';

// Buat koneksi
$conn = new mysqli($host, $username, $password, $database);

// Periksa koneksi
if ($conn->connect_error) {
    die('Koneksi database gagal: ' . $conn->connect_error);
}

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
$result_perhari = $conn->query($query_perhari);
$row_perhari = $result_perhari->fetch_assoc();
$total_perhari = $row_perhari['total_perhari'];

// Membuat query untuk mendapatkan jumlah penghasilan per bulan
$query_perbulan = "SELECT SUM(harga_i) AS total_perbulan
                   FROM invoice i
                   $whereClause";
$result_perbulan = $conn->query($query_perbulan);
$row_perbulan = $result_perbulan->fetch_assoc();
$total_perbulan = $row_perbulan['total_perbulan'];

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Laporan Penjualan Per Hari</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: var(--white);
        }

        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }

        form {
            margin-bottom: 20px;
        }

        .total-income {
            margin-bottom: 20px;
        }

        .total-income table {
            width: 50%;
            margin: 0;
            border-collapse: collapse;
        }

        .total-income th, .total-income td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .warning {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Laporan Penjualan Per Hari</h2>

    <form method="POST" action="">
        <label for="tanggal">Tanggal:</label>
        <input type="number" name="tanggal" id="tanggal" min="1" max="31" value="<?php echo $tanggal; ?>">

        <label for="bulan">Bulan:</label>
        <input type="number" name="bulan" id="bulan" min="1" max="12" value="<?php echo $bulan; ?>">

        <label for="tahun">Tahun:</label>
        <input type="number" name="tahun" id="tahun" min="1900" max="2099" value="<?php echo $tahun; ?>">

        <button type="submit" name="cari">Cari</button>
        <button type="submit" name="reset">Reset</button>
    </form>

    <?php
    if ($result->num_rows > 0) {
        echo "<table>
                <tr>
                    <th>No.</th>
                    <th>Nama User</th>
                    <th>ID User</th>
                    <th>Judul Iklan</th>
                    <th>ID Iklan</th>
                    <th>Jumlah</th>
                    <th>Harga</th>
                    <th>Waktu</th>
                </tr>";
        $no = 1;
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $no . "</td>
                    <td>" . $row["nama_lengkap"] . "</td>
                    <td>" . $row["id_user"] . "</td>
                    <td>" . $row["judul"] . "</td>
                    <td>" . $row["id_iklan"] . "</td>
                    <td>" . $row["jumlah"] . "</td>
                    <td>" . $row["harga_i"] . "</td>
                    <td>" . $row["waktu"] . "</td>
                </tr>";
            $no++;
        }
        echo "</table>";

        echo "<div class='total-income'>
                <table>
                    <tr>
                        <th style='text-align: left;'>Jumlah Penghasilan Per Hari:</th>
                        <td>Rp " . $total_perhari . "</td>
                    </tr>
                    <tr>
                        <th style='text-align: left;'>Jumlah Penghasilan Per Bulan:</th>
                        <td>Rp " . $total_perbulan . "</td>
                    </tr>
                </table>
              </div>";
    } else {
        echo "<p class='warning'>Tidak ada penjualan untuk tanggal, bulan, dan tahun yang diminta.</p>";
    }
    ?>

</body>
</html>