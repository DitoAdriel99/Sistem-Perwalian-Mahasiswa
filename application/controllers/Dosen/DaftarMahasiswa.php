<?php
class DaftarMahasiswa extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Dosen/DaftarMhs_model', 'm');
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->helper(array('form', 'url'));

		if ($this->session->userdata('roles') != "2") {
			redirect(base_url() . 'Dosen');
		}
	}


	public function index()
	{
		$pj_angkatan = $this->session->userdata('pj_angkatan');
		$nidn = $this->session->userdata('nidn');
		$daftarMahasiswa = $this->m->getDaftarMahasiswa($pj_angkatan,$nidn);

		$data = [
			'daftarMhs' => $daftarMahasiswa
		];

		$this->load->view('TemplateDosen/Header');
		$this->load->view('Dosen/DaftarMahasiswa', $data);
		$this->load->view('TemplateDosen/Footer');
	}

	public function detail($nim)
	{
		$mahasiswa = $this->m->getMahasiswa($nim);
		$matakuliah = $this->m->getMatakuliah($nim);
		$surat = $this->m->getSurat($nim);
		$cekSurat = $this->m->cekSurat($nim);
		$cekSp = $this->m->cekSp($nim);
		$getSp = $this->m->getSp($nim);

		$data = [
			'mahasiswa' => $mahasiswa,
			'matakuliah' => $matakuliah,
			'surat' => $surat,
			'cekSurat' => $cekSurat,
			'cekSp' => $cekSp,
			'getSp' => $getSp,
		];

		$this->load->view('TemplateDosen/Header');
		$this->load->view('Dosen/DetailMahasiswa', $data);
		$this->load->view('TemplateDosen/Footer');
	}

	public function viewDiskusi($nim)
	{
		$mahasiswa = $this->m->getMahasiswa($nim);
		$nidn = $this->session->userdata('nidn');
		$dosen = $this->m->getDosen($nidn);
		$diskusi = $this->m->getDiskusi($nim);

		$data = [
			'mahasiswa' => $mahasiswa,
			'dosen' => $dosen,
			'diskusi' => $diskusi
		];

		$this->load->view('TemplateDosen/Header');
		$this->load->view('Dosen/DiskusiMahasiswa', $data);
		$this->load->view('TemplateDosen/Footer');
	}

	public function tambahDiskusi()
	{
		$nim = $this->input->post('nim');
		$nidn = $this->input->post('nidn');
		$isi = $this->input->post('isi');
		date_default_timezone_set('Asia/Jakarta');
		$tanggal = date('d-m-Y H:i:s');
		$username = $this->session->userdata('username');

		$data = [
			'nim' => $nim,
			'pengirim' => $username,
			'isi' => $isi,
			'tanggal' => $tanggal
		];

		$this->m->push($data);
		redirect('Dosen/DaftarMahasiswa/viewDiskusi/' . $nim);

	}

	public function tambahSp()
	{
		$id_user = $this->input->post('id_user');
		$nidn = $this->session->userdata('nidn');
		$nim = $this->input->post('nim');
		$where = ['id_user' => $id_user];

		$config['upload_path']          = './sp/';
		$config['allowed_types']        = 'gif|jpg|png|pdf';
		$config['max_size']             = 10000;
		$config['max_width']            = 10000;
		$config['max_height']           = 10000;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('sp')) {
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('TemplateDosen/Header');
			$this->load->view('Dosen/DetailMahasiswa', $error);
			$this->load->view('TemplateDosen/Footer');
		} else {
			$dataUpload = array('upload_data' => $this->upload->data());
			// $this->load->view('upload_success', $dataUpload);
			$data = [
				'sp' => $dataUpload['upload_data']['file_name'],
				'nim' => $nim,
				'nidn' => $nidn,
			];

			$this->db->insert('surat_peringatan',$data);
			redirect('Dosen/DaftarMahasiswa/detail/' . $nim);

		}
	}
}
