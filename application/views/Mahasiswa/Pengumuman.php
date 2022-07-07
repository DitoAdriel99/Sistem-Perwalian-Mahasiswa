<Blockquote>
	<h5>Halaman Pengumuman</h5>
	<h5 style="color: #337ab7;"><i class="fa-solid fa-user"></i> <?= $this->session->userdata('username'); ?> / <?= $this->session->userdata('nim'); ?></h5>
</Blockquote>

<div class="container-fluid">
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
