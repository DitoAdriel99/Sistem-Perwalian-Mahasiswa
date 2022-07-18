<?php
class Laporan extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Dosen/Laporan_model', 'm');
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->helper(array('form', 'url'));

		if ($this->session->userdata('roles') != "2") {
			redirect(base_url() . 'Dosen');
		}
	}


	public function index()
	{
		$nidn = $this->session->userdata('nidn');
		$angkatan = $this->session->userdata('pj_angkatan');
		$getLaporan = $this->m->getLaporan($nidn);
		// print_r($getLaporan);die;

		$data = [
			'getLaporan' => $getLaporan
		];

		$this->load->view('TemplateDosen/Header');
		$this->load->view('Dosen/Laporan',$data);
		$this->load->view('TemplateDosen/Footer');
	}

}
