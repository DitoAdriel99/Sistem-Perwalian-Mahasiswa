<Blockquote>
	<h5>Halaman Pengumuman</h5>
	<h5 style="color: #337ab7;"><i class="fa-solid fa-user"></i> <?= $this->session->userdata('username'); ?> / <?= $this->session->userdata('nidn'); ?></h5>
</Blockquote>
<div class="container-fluid">
	<a type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">&nbsp;<i class="fa-solid fa-bullhorn"></i>&nbsp; Tambah Pengumuman</a>
	<blockquote></blockquote>
	<div class="row">
		<div class="col-md-12 panel panel-primary">
			<div class="panel-heading">Daftar Mahasiswa Perwalian</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-condensed" id="" width="100%">
						<tbody>
							<tr class="active">
								<td class="" id="" width="3%" align="l" valign="top"><b>NO</b></td>
								<td class="" id="" width="5%" align="l" valign="top"><b>Tanggal</b></td>
								<td class="" id="" width="25%" align="l" valign="top"><b>Judul</b></td>
								<td class="" id="" width="25%" align="l" valign="top"><b>Respon?</b></td>
								<td class="" id="" width="5%" align="l" valign="top"><b>Detail</b></td>
							</tr>
							<?php
							$count = 0;
							foreach ($pengumuman as $row) :
								$count = $count + 1;
							?>

								<tr class="">
									<td class="" id="" width="3%" align="l" valign="top"><?= $count ?></td>
									<td class="" id="" width="5%" align="l" valign="top"><?= $row->tanggal ?></td>
									<td class="" id="" width="28%" align="l" valign="top"><?= $row->judul ?></td>
									<?php if($row->respon == 0){ ?>
									<td class="" id="" width="5%" align="l" valign="top">Tidak</td>
									<?php }else{ ?>
									<td class="" id="" width="5%" align="l" valign="top">Iya</td>
									<?php } ?>
									<td class="" id="" width="5%" align="l" valign="top">
										<a class="btn btn-primary" href="<?= base_url() . 'Dosen/PengumumanMahasiswa/detailPengumuman/' . $row->id_pengumuman  ?>"><i class="fa-solid fa-eye"></i> Lihat Info</a>

									</td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
				</div>

			</div>
		</div>

	</div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Tambah Pengumuman</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form method="post" action="<?= base_url() . 'Dosen/PengumumanMahasiswa/tambahPengumuman' ?>">
				<div class="modal-body">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Judul Pengumuman</label>
						<input type="text" class="form-control" name="judul" placeholder="Masukan Judul Pengumuman" required>
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Deskripsi</label>
						<textarea type="text" class="form-control" name="deskripsi" placeholder="Masukan Deskripsi Pengumuman" required>

						</textarea>
						<label class="form-check-label" for="exampleCheck1">Masukan Deskripsi</label>
					</div>
					<div class="mb-3">
						<input class="form-check-input" type="radio" name="respon" value="0" id="respon2">
						<label class="form-check-label" for="respon2">
							Tidak Perlu Respon
						</label>
					</div>
					<div class="mb-3">
						<input class="form-check-input" type="radio" name="respon" value="1" id="respon1">
						<label class="form-check-label" for="respon1">
							Perlu Respon
						</label>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</form>
		</div>
	</div>
</div>
