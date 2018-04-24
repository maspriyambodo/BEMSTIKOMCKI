<!DOCTYPE html>
<html class="Post-ClickTrap">
    <?php $this->view('Head'); ?>

    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?= $this->view('Header'); ?>
            <section id=page-title>
                <div class="container clearfix">
                    <h1>News</h1> <span> See our latest news and report regarding our activity </span>
                    <ol class=breadcrumb>
                        <li class=breadcrumb-item><a href=<?= base_url(); ?>>Home</a></li>
                        <li class="breadcrumb-item active" aria-current=page>Blog</li>
                    </ol>
                </div>
            </section>
            <div style="clear:both;margin:5% 0"></div>
            <section id=content>
                <div class=content-wrap>
                    <div class="container clearfix">
                        <div id=posts class="post-grid grid-container clearfix" data-layout=fitRows style=position:relative;height:1107.93px>
                            <?php foreach ($data as $value) { ?>
                                <div class="entry clearfix" style=position:absolute;left:0;top:0>
                                    <div class=entry-image>
                                        <a href=<?= base_url($value->gmb1); ?> data-lightbox=image>
                                            <img class=image_fade src=<?= base_url($value->gmb1); ?> style=opacity:1;width:264px;height:200px>
                                        </a>
                                    </div>
                                    <div class=entry-title>
                                        <h2>
                                            <a href=<?= base_url('News/Read/' . $value->PostID . ''); ?>> <?= $value->post_title ?>
                                            </a>
                                        </h2>
                                    </div>
                                    <ul class="entry-meta clearfix">
                                        <li><i class=icon-calendar3></i>
                                            <?= $value->post_date = date("d F Y") ?>
                                        </li>
                                        <li><i class=icon-comments></i>
                                            <?php
                                            if ($value->comment_content == "") {
                                                echo 0;
                                            } else {
                                                echo $value->totalkomen;
                                            }
                                            ?>
                                        </li>
                                    </ul>
                                    <div class=entry-content>
                                        <p>
                                            <?= character_limiter($value->post_content, 200) ?>
                                        </p> <a href=<?= base_url('News/ReadNews/' . $value->PostID . ''); ?> class=more-link>Read More</a> </div>
                                </div>
                            <?php } ?>
                        </div>
                        <?= $pagination; ?>
                    </div>
                </div>
            </section>
            <div style="clear:both;margin:10px 0"></div>
            <?= $this->view('Footer'); ?>
        </div>
    </body>
    <?php $this->view('FooterScript'); ?>

</html>