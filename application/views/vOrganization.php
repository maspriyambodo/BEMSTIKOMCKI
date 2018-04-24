<!DOCTYPE html>
<html dir=ltr lang=en-US class="Post-ClickTrap">
    <?= $this->view('Head'); ?>
    <style type="text/css">/*<![CDATA[*/@font-face{font-family:'bebas';src:url('<?= base_url('assets/css/fonts/BebasNeue-webfont.eot'); ?>') format('eot'),url('<?= base_url('assets/css/fonts/BebasNeue-webfont.woff'); ?>') format('woff'),url('<?= base_url('assets/css/fonts/BebasNeue-webfont.ttf'); ?>') format('truetype'),url('<?= base_url('assets/css/fonts/BebasNeue-webfont.svg'); ?>') format('svg')}/*]]>*/</style>
    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?php echo $this->view('Header'); ?>
            <?php echo $this->view('HeaderSlider'); ?>
            <section id="content">
                <div class="content-wrap">
                    <div style="clear:both;margin:10px 0px;"></div>
                    <div class="row">
                        <div class="col-md-1">

                        </div>
                        <div class="col-md-10" data-animate="pulse">
                            <a href="<?= base_url('assets/images/strbem.jpg'); ?>" data-lightbox="image">
                                <img class="image_fade" src="<?= base_url('assets/images/strbem.jpg'); ?>" style="opacity:1;">
                            </a>
                        </div>
                        <div class="col-md-1">

                        </div>
                    </div>
                    <div style="clear:both;margin:10px 0px;"></div>
                    <div class="section">
                        <div class="container">
                            <div class="table-responsive">
                                <table id="datatable1" class="table table-bordered table-striped table-hover">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>NO</th>
                                            <th class="text-center">NAMA</th>
                                            <th class="text-center">DIVISI</th>
                                            <th class="text-center">JURUSAN</th>
                                            <th class="text-center">SEMESTER</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($str as $str) { ?>
                                            <tr>
                                                <td><?= $str->anggota_bem_id ?></td>
                                                <td><?= $str->nama ?></td>
                                                <td><?= $str->jabatan ?></td>
                                                <td></td>
                                                <td><?= $str->smt ?></td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>NO</th>
                                            <th class="text-center">NAMA</th>
                                            <th class="text-center">DIVISI</th>
                                            <th class="text-center">JURUSAN</th>
                                            <th class="text-center">SEMESTER</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <?= $pagination; ?>
                        </div>
                    </div>
                    <div class="container">
                        <h1 class="text-center" style="font-family:'bebas', Arial;font-size:60px;">         
                            DIVISI BEM & Tupoksi
                        </h1>
                        <div class="row">
                            <div class="col-md-6">
                                <?php foreach ($bil1 as $bil1) { ?>
                                    <h2 class="text-uppercase" style="text-align:center;color:#2d328e;margin:20px 0px 5px 0px;font-family:'bebas', Arial;">
                                        <?php
                                        if ($bil1->jabatan == "Sekertaris I") {
                                            echo 'Sekertaris';
                                        } elseif ($bil1->jabatan == "Bendahara I") {
                                            echo 'Bendahara';
                                        } else {
                                            echo $bil1->jabatan;
                                        }
                                        ?>
                                    </h2>
                                    <div class="text-justify" style="line-height: 1.8em;font-size:18px;font-family: 'Montserrat', Helvetica, Arial, Lucida, sans-serif;">
                                        <?= $bil1->des ?>
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="col-md-6">
                                <?php foreach ($bil2 as $bil2) { ?>
                                    <h2 class="text-uppercase" style="text-align:center;color: #2d328e;margin:20px 0px 5px 0px;font-family:'bebas', Arial;">
                                        <?php
                                        if ($bil2->des == "") {
                                            echo '';
                                        } else {
                                            echo $bil2->jabatan;
                                        }
                                        ?>
                                    </h2>
                                    <div class="text-justify" style="line-height: 1.8em;font-size: 18px;font-family: 'Montserrat', Helvetica, Arial, Lucida, sans-serif;">
                                        <?php
                                        if ($bil2->des == "") {
                                            echo '';
                                        } else {
                                            echo $bil2->des;
                                        }
                                        ?>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div style="clear:both;margin:10px 0px;"></div>
                </div>
            </section>
            <?= $this->view('Footer'); ?>
        </div>
        <?= $this->view('FooterScript'); ?>
    </body>
</html>