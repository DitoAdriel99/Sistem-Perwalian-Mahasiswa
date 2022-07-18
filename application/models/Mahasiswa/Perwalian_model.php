<?php
class Perwalian_model extends CI_Model
{

	public function __construct()
	{
		$this->load->database();
	}

	public function getDosen($pj_angkatan)
	{
		$query = $this->db->select('*')
			->from('users')
			->where('pj_angkatan',$pj_angkatan)
			->get();
		return $query->row();
	}

	public function cekSp($nim)
	{
		$query = $this->db->select('*')
			->from('surat_peringatan')
			->where('nim', $nim)
			->get();
		return $query->num_rows();
	}

	public function getSp($nim)
	{
		$query = $this->db->select('*')
			->from('surat_peringatan')
			->where('nim', $nim)
			->get();
		return $query->result();
	}

}
