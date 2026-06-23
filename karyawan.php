<?php
abstract class Karyawan {
    protected $id_karyawan;
    protected $nama_karyawan;
    protected $departement;
    protected $hariKerjaMasuk;
    protected $gajiDasarPerHari;

    public function __construct($id_karyawan, $nama_karyawan, $departement, $hariKerjaMasuk, $gajiDasarPerHari) {
        $this->id_karyawan = $id_karyawan;
        $this->nama_karyawan = $nama_karyawan;
        $this->departement = $departement;
        $this->hariKerjaMasuk = $hariKerjaMasuk;
        $this->gajiDasarPerHari = $gajiDasarPerHari;
    }

    // Getter methods
    public function getIdKaryawan() { return $this->id_karyawan; }
    public function getNamaKaryawan() { return $this->nama_karyawan; }
    public function getDepartement() { return $this->departement; }
    public function getHariKerjaMasuk() { return $this->hariKerjaMasuk; }
    public function getGajiDasarPerHari() { return $this->gajiDasarPerHari; }

    // Abstract methods
    abstract public function hitungGajiBersih();
    abstract public function tampilProfilKaryawan();
}
?>