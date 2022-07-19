<div class="container-fluid">
	<div class="row">
		<div class="col-md-12 panel panel-primary">
			<div class="panel-heading"><h1><b>LAPORAN MAHASISWA</b></h1></div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-condensed" id="" width="100%">
						<tbody>
							<tr class="active">
								<td class="" id="" width="3%" align="l" valign="top"><b>NO</b></td>
								<td class="" id="" width="5%" align="l" valign="top"><b>NIM</b></td>
								<td class="" id="" width="15%" align="l" valign="top"><b>Detail</b></td>
							</tr>
							<?php
							$count = 0;
							foreach ($getLaporan as $row) :
								$count = $count + 1;
							?>
								<tr class="">
									<td class="" id="" width="3%" align="l" valign="top"><?= $count ?></td>
									<td class="" id="" width="5%" align="l" valign="top"><?= $row->nim ?></td>
									<td class="" id="" width="15%" align="l" valign="top"><?= $row->detail ?></td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>
