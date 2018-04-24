<!DOCTYPE html>
<html dir=ltr lang=en-US class="Post-ClickTrap">
    <?= $this->view('Head'); ?>

    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?php echo $this->view('Header'); ?>
            <?php echo $this->view('HeaderSlider'); ?>
            <section id="content">
                <div class="container">
                    <div id="deskripsi">
                        <div style="clear:both;margin:5% 0px;"></div>
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-5">
                                <p class="text-justify">
                                    <?php
                                    foreach ($ukm as $value) {
                                        echo $value->deskripsi;
                                    }
                                    ?>
                                </p>
                            </div>
                            <div class="col-md-5">
                                <?php
                                foreach ($ukm as $value) {
                                    if ($value->icon == "") {
                                        
                                    } else {
                                        echo '<img src=' . base_url($value->icon) . ' class="text-center" style="width:250px;height:187px;margin-top:-10%;"/>';
                                    }
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                    <div class="tabs tabs-bordered clearfix ui-tabs ui-corner-all ui-widget ui-widget-content" id="tab-2">

                        <ul class="tab-nav clearfix ui-tabs-nav ui-corner-all ui-helper-reset ui-helper-clearfix ui-widget-header" role="tablist">
                            <li role="tab" tabindex="0" 
                                class="ui-tabs-tab ui-corner-top 
                                ui-state-default ui-tab ui-tabs-active ui-state-active" 
                                aria-controls="tabs-5" aria-labelledby="ui-id-5" aria-selected="true" 
                                aria-expanded="true">
                                <a href="#tabs-5" role="presentation" tabindex="-1" 
                                   class="ui-tabs-anchor" id="ui-id-5">Sejarah
                                </a>
                            </li>
                            <li role="tab" tabindex="-1" class="ui-tabs-tab ui-corner-top ui-state-default 
                                ui-tab" aria-controls="tabs-6" aria-labelledby="ui-id-6" aria-selected="false" 
                                aria-expanded="false">
                                <a href="#tabs-6" role="presentation" tabindex="-1" 
                                   class="ui-tabs-anchor" id="ui-id-6">
                                    Visi & Misi
                                </a>
                            </li>
                            <li role="tab" tabindex="-1" class="ui-tabs-tab ui-corner-top ui-state-default ui-tab" 
                                aria-controls="tabs-7" aria-labelledby="ui-id-7" aria-selected="false" 
                                aria-expanded="false">
                                <a href="#tabs-7" role="presentation" tabindex="-1" 
                                   class="ui-tabs-anchor" id="ui-id-7">
                                    Program Kerja
                                </a>
                            </li>
                        </ul>

                        <div class="tab-container">

                            <div class="tab-content clearfix ui-tabs-panel ui-corner-bottom ui-widget-content" id="tabs-5" aria-labelledby="ui-id-5" role="tabpanel" aria-hidden="false" style="">
                                <?php
                                foreach ($ukm as $value) {
                                    echo '<p class="text-justify" style="font-size:14px;">';
                                    echo $value->sejarah;
                                    echo '</p>';
                                }
                                ?>
                            </div>

                            <div class="tab-content clearfix ui-tabs-panel ui-corner-bottom ui-widget-content" id="tabs-6" aria-labelledby="ui-id-6" role="tabpanel" style="display: none;" aria-hidden="true">
                                <b class="text-uppercase" style="font-size:16px;">visi</b>
                                <div style="clear:both;margin:10px 0px;"></div>
                                <?php
                                foreach ($ukm as $value) {
                                    echo '<p class="text-justify" style="font-size:14px;">';
                                    echo $value->visi;
                                    echo '</p>';
                                }
                                ?>
                                <div style="clear:both;margin:10px 0px;"></div>
                                <b class="text-uppercase" style="font-size:16px;">Misi</b>
                                <div style="clear:both;margin:10px 0px;"></div>
                                <?php
                                foreach ($JoinUkm as $value) {
                                    echo '<p class="text-justify" style="font-size:14px;">';
                                    echo $value->Misi;
                                    echo '</p>';
                                }
                                ?>
                            </div>

                            <div class="tab-content clearfix ui-tabs-panel ui-corner-bottom 
                                 ui-widget-content" id="tabs-7" aria-labelledby="ui-id-7" role="tabpanel" 
                                 style="display: none;" aria-hidden="true">
                                <div class="table-responsive">
                                    <table class="table table-hover table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Nama Kegiatan</th>
                                                <th class="text-center">Tujuan</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            foreach ($JoinUkm as $value) {
                                                echo '<tr>
                                            <td>' . $value->NamaKegiatan . '</td>
                                            <td>' . $value->Saran_Tujuan . '</td>
                                        </tr>';
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
        <?php echo $this->view('Footer'); ?>
        <?= $this->view('FooterScript'); ?>
    </body>

</html>