<html class="Post-ClickTrap">
    <?php $this->view('Head'); ?>
    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?php echo $this->view('Header'); ?>

            <section id="page-title">

                <div class="container clearfix">
                    <h1>Gallery</h1>
                    <span>Showcase of Our Awesome Works in 4 Columns</span>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?= base_url();?>">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Galleries
                        </li>
                    </ol>
                </div>
                <div class="container-fluid clearfix">
                    <div class="col_full clearfix">
                        <div class="masonry-thumbs grid-5" 
                             data-big="1" data-lightbox="gallery" 
                             style="margin-right: -1px; position: relative; height: 513.75px;">
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                            <a href="<?= base_url('assets/images/programmer.gif'); ?>" data-lightbox="gallery-item" 
                               style="width: 456px; position: absolute; left: 0px; top: 0px;">
                                <img class="image_fade" src="<?= base_url('assets/images/programmer.gif'); ?>" alt="Gallery Thumb 1" style="opacity: 1;"/>
                            </a>
                        </div>


                    </div>
                </div>
            </section>
            <?php echo $this->view('Footer'); ?>
        </div>
    </body>
    <?php $this->view('FooterScript'); ?>
</html>