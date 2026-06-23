<?php
require_once 'Karyawan.php';

class KaryawanMagang extends Karyawan {
    private $uangSakuBulanan;
    private $sertifikatKampusMerdeka;

    public function __construct($id_karyawan, $nama_karyawan, $departement, $hariKerjaMasuk, $gajiDasarPerHari, $uangSakuBulanan, $sertifikatKampusMerdeka) {
        parent::__construct($id_karyawan, $nama_karyawan, $departement, $hariKerjaMasuk, $gajiDasarPerHari);
        $this->uangSakuBulanan = $uangSakuBulanan;
        $this->sertifikatKampusMerdeka = $sertifikatKampusMerdeka;
    }

    public function hitungGajiBersih() {
        // Gaji = uangSakuBulanan
        return $this->uangSakuBulanan;
    }

    public function tampilProfilKaryawan() {
        return "Uang Saku: Rp " . number_format($this->uangSakuBulanan, 0, ',', '.') . 
               " | Sertifikat: " . $this->sertifikatKampusMerdeka;
    }
}
?>