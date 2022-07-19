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
		$this->load->view('Dosen/Laporan', $data);
		$this->load->view('TemplateDosen/Footer');
	}

	public function pushEmail()
	{
		$nidn = $this->session->userdata('nidn');
		$email = $this->session->userdata('email');
		// print_r($email);die;
		$getLaporan = $this->m->getLaporan($nidn);
		$data = [
			'getLaporan' => $getLaporan
		];


		$config = array(
			'protocol' => 'smtp', // 'mail', 'sendmail', or 'smtp'
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'skripsidito@gmail.com',
			'smtp_pass' => 'tujmezupyrnpughm',
			'mailtype' => 'html', //plaintext 'text' mails or 'html'
			'smtp_timeout' => '4', //in seconds
			'charset' => 'iso-8859-1',
			'wordwrap' => TRUE
		);
		$this->email->initialize($config);
		$this->email->set_newline("\r\n");
		//Load email library
		$this->load->library('email');
		$this->email->from('No-reply', 'Sistem Perwalian');
		$this->email->to($email);
		$this->email->subject('Laporan Mahasiswa');
		$this->email->message($this->load->view('Dosen/sendEmail', $data, true));
		//Send mail
		if ($this->email->send()) {
			$this->session->set_flashdata('success', 'Congragulation Email Send Successfully.');
			redirect(base_url('Dosen/Laporan'));
		} else {
			$this->session->set_flashdata('warning', 'You have encountered an error');
			redirect(base_url('Dosen/Laporan'));
		}
	}
}
