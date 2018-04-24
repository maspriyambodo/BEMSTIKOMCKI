<!DOCTYPE html>
<html class="Post-ClickTrap">
    <?php $this->view('Head'); ?>
    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?php echo $this->view('Header'); ?>
            <?php echo $this->view('HeaderSlider'); ?>
            <section id=content>
                <div class=content-wrap>
                    <div class="container">
                        <div style="clear:both;margin:10px 0px;"></div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="section-title">
                                    <h2 class="text-center">Visi</h2>
                                </div>
                            </div>
                            <div class="text-center margin-top-10 margin-bottom-50 visi">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <h2>
                                            Terwujudnya BEM <?= date("Y") ?> - <?= date("Y") + 1 ?> dan juga Mahasiswa yang Aktif, Kreatif, Inovatif,
                                            berprestasi serta Bersaudara dan bersinergi antar Civitas Akademika STIKOM CKI.
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center margin-top-10 margin-bottom-50 services-section">
                            <h2>
                                Misi
                            </h2>
                            <div class="row">
                                <div class="col-md-4 col-sm-6">
                                    <div class="services-detail">
                                        <!-- <i class="fa fa-mobile color-1"></i>
                                        <h3>Mobile Design</h3>
                                        <hr> -->
                                        <p>Membangun iklim internal yang solid, nyaman, dan kondusif untuk meningkatkan produktivitas lembaga dan pengembangan kompetensi internal.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="services-detail">
                                        <!-- <i class="fa fa-mobile color-1"></i>
                                        <h3>Mobile Design</h3>
                                        <hr> -->
                                        <p>Membangun iklim internal yang solid, nyaman, dan kondusif untuk meningkatkan produktivitas lembaga dan pengembangan kompetensi internal.</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="services-detail">
                                        <!-- <i class="fa fa-mobile color-1"></i>
                                        <h3>Mobile Design</h3>
                                        <hr> -->
                                        <p>Membangun iklim internal yang solid, nyaman, dan kondusif untuk meningkatkan produktivitas lembaga dan pengembangan kompetensi internal.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="fancy-title title-center title-dotted-border topmargin">
                            <h3>OUR BEST TEAM</h3>
                        </div>
                        <div id=oc-products class="owl-carousel products-carousel carousel-widget" 
                             data-margin=20 data-nav=true data-pagi=false data-items-xs=1 data-items-sm=2 
                             data-items-md=3 data-items-lg=4>
                                 <?php
                                 foreach ($Anggota as $value) {
                                     echo '<div class=oc-item>
                                <div class="product iproduct clearfix">
                                    <div class=product-image>
                                        <a href=' . base_url('Home/View/' . $value->anggota_bem_id . '') . ' 
                                            data-lightbox=ajax>
                                            <img src=' . base_url($value->pict1) . '>
                                        </a>
                                        <a href=' . base_url('Home/View/' . $value->anggota_bem_id . '') . ' 
                                            data-lightbox=ajax>
                                            <img src=' . base_url($value->pict2) . '>
                                        </a>
                                        <div class=product-overlay>
                                            <a href=' . base_url('Home/View/' . $value->anggota_bem_id . '') . ' 
                                                class=item-quick-view data-lightbox=ajax>
                                                <i class=icon-zoom-in2></i>
                                                <span> Quick View</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-desc center">
                                        <div class=product-title>
                                            <h3>' . $value->nama . '</h3>
                                        </div>
                                        <div class=product-price>
                                            <ins>' . $value->jabatan . '</ins>
                                        </div>
                                    </div>
                                </div>
                            </div>';
                                 }
                                 ?>
                        </div>
                    </div>

                    <section id="content" style="margin-bottom: 0px;">

                        <div class="content-wrap nopadding">

                            <div id="portfolio" class="portfolio portfolio-parallax clearfix">

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-between" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/1.jpg'); ?>); background-position: 0px 148.148px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single.html">Open Imagination</a></h3>
                                        <span><a href="#">Media</a>, <a href="#">Icons</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/2.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single.html">Locked Steel Gate</a></h3>
                                        <span><a href="#">Illustrations</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/3.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single-video.html">Mac Sunglasses</a></h3>
                                        <span><a href="#">Graphics</a>, <a href="#">UI Elements</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/4.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single-gallery.html">Morning Dew</a></h3>
                                        <span><a href="#"></a><a href="#">Icons</a>, <a href="#">Illustrations</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/5.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single.html">Bridge Side</a></h3>
                                        <span><a href="#">Illustrations</a>, <a href="#">Icons</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/6.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single-gallery.html">Shake It!</a></h3>
                                        <span><a href="#">Illustrations</a>, <a href="#">Graphics</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/7.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single-video.html">Backpack Contents</a></h3>
                                        <span><a href="#">UI Elements</a>, <a href="#">Icons</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>

                                <article class="portfolio-item pf-media pf-icons">
                                    <div class="portfolio-image skrollable skrollable-before" 
                                         style="background-image: url(<?= base_url('assets/images/parallax/8.jpg'); ?>); background-position: 0px 300px;" data-bottom-top="background-position:0px 300px;" data-top-bottom="background-position:0px -300px;"><div class="portfolio-overlay"></div></div>
                                    <div class="portfolio-desc">
                                        <h3><a href="portfolio-single-video.html">Study Table</a></h3>
                                        <span><a href="#">Graphics</a>, <a href="#">Media</a></span>
                                        <div class="portfolio-divider"><div></div></div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </section>
                </div>    
            </section>
            <?php echo $this->view('Footer'); ?>
        </div>
    </body>
    <?php $this->view('FooterScript'); ?>
</html>