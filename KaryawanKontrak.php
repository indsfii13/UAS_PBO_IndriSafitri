<?php
require_once 'Karyawan.php';

class KaryawanKontrak extends Karyawan {
    private $durasiKontrakBulan;
    private $agensiPenyalur;

    public function __construct($id_karyawan, $nama_karyawan, $departement, $hariKerjaMasuk, $gajiDasarPerHari, $durasiKontrakBulan, $agensiPenyalur) {
        parent::__construct($id_karyawan, $nama_karyawan, $departement, $hariKerjaMasuk, $gajiDasarPerHari);
        $this->durasiKontrakBulan = $durasiKontrakBulan;
        $this->agensiPenyalur = $agensiPenyalur;
    }

    public function hitungGajiBersih() {
        // Gaji = (hariKerjaMasuk * gajiDasarPerHari) + (durasiKontrakBulan * 50000)
        return ($this->hariKerjaMasuk * $this->gajiDasarPerHari) + ($this->durasiKontrakBulan * 50000);
    }

    public function tampilProfilKaryawan() {
        return "Durasi Kontrak: " . $this->durasiKontrakBulan . " bulan | Agensi: " . $this->agensiPenyalur;
    }
}
?>