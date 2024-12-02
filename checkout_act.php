<?php
include 'koneksi.php';

session_start();

if (!isset($_SESSION['customer_id'])) {
    header("location:login.php?alert=belum_login");
    exit();
}

$id_customer = $_SESSION['customer_id'];
$tanggal = date('Y-m-d');

$nama = mysqli_real_escape_string($koneksi, $_POST['nama']);
$hp = mysqli_real_escape_string($koneksi, $_POST['hp']);
$alamat = mysqli_real_escape_string($koneksi, $_POST['alamat']);
$total_bayar = (float) $_POST['total_bayar'];
$metode_pembayaran = mysqli_real_escape_string($koneksi, $_POST['metode_pembayaran']);
$metode_pengiriman = mysqli_real_escape_string($koneksi, $_POST['metode_pengiriman']);

// Simpan ke dalam tabel invoice
$query = "INSERT INTO invoice (invoice_customer, invoice_nama, invoice_hp, invoice_alamat, total_bayar, invoice_metode_pembayaran, invoice_metode_pengiriman, invoice_tanggal) 
          VALUES ('$id_customer', '$nama', '$hp', '$alamat', '$total_bayar', '$metode_pembayaran', '$metode_pengiriman', '$tanggal')";
$result = mysqli_query($koneksi, $query);

if ($result) {
    // Ambil ID invoice yang baru dibuat
    $invoice_id = mysqli_insert_id($koneksi);

    // Simpan detail produk dalam tabel invoice_produk
    foreach ($_SESSION['keranjang'] as $item) {
        $produk_id = $item['produk'];
        $jumlah = $item['jumlah'];

        $query_produk = "INSERT INTO invoice_produk (invoice_id, produk_id, jumlah) 
                         VALUES ('$invoice_id', '$produk_id', '$jumlah')";
        mysqli_query($koneksi, $query_produk);
    }

    // Hapus keranjang setelah checkout selesai
    unset($_SESSION['keranjang']);

    // Redirect ke halaman konfirmasi atau status pembayaran
    header("location:order_success.php");
} else {
    echo "Terjadi kesalahan dalam proses checkout!";
}
?>
