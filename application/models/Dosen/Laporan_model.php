<?php
class Laporan_model extends CI_Model
{
	public function __construct()
	{
		$this->load->database();
	}

	public function getLaporan($nidn)
	{
		$query = $this->db->query("SELECT nim,group_concat(nama_mk,' Presensi Sebelum UTS = ',absensi,' Presensi Sesudah UTS = ',absensi_setelah) as detail from matakuliah WHERE nidn = $nidn GROUP BY nim");
		return $query->result();
	}
}
