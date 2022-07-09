<Blockquote>
	<h5>Halaman Pengumuman</h5>
	<h5 style="color: #337ab7;"><i class="fa-solid fa-user"></i> <?= $this->session->userdata('username'); ?> / <?= $this->session->userdata('nim'); ?></h5>
</Blockquote>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">

			<?php
			$count = 0;
			foreach ($pengumuman as $row) :
				$count = $count + 1;
			?>
				<div class="card">
					<div class="card-header">
						<?= $row->tanggal ?>
					</div>
					<div class="card-body">
						<h5 class="card-title">Judul: <?= $row->judul ?></h5>
						<a class="btn btn-primary" href="<?= base_url() . 'Mahasiswa/Pengumuman/detailPengumuman/' . $row->id_pengumuman  ?>"><i class="fa-solid fa-eye"></i> Lihat Info</a>

					</div>
				</div>
				<br>
				<?php endforeach ?>
		</div>
	</div>
</div>
