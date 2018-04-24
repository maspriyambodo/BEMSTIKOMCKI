<html class="Post-ClickTrap">
    <?php $this->view('Head'); ?>
    <style>
        .entry-c img{
            display:none;
        }
    </style>
    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?= $this->view('Header'); ?>
            <div style="clear:both;margin:5% 0px;"></div>
            <?php foreach ($View as $View) { ?>
                <div class="container clearfix">
                    <div class="single-post nobottommargin">

                        <div class="entry clearfix">
                            <div class="entry-title">
                                <h2>
                                    <?= $View->post_title ?>
                                </h2>
                            </div>
                            <ul class="entry-meta clearfix">
                                <li>
                                    <i class="icon-calendar3"></i> <?= $View->post_date = date("d F Y"); ?>
                                </li>
                                <li>
                                    <i class="icon-user"></i> <?= $View->nama ?>
                                </li>
                                <li>
                                    <i class="icon-folder-open"></i>
                                    <?php
                                    if ($View->jenis == 1) {
                                        echo 'News';
                                    } elseif ($View->jenis == 2) {
                                        echo 'Blog';
                                    } else {
                                        echo 'Other';
                                    }
                                    ?>
                                </li>
                                <li>
                                    <i class="icon-comments"></i> <?php
                                    if ($View->comment_content == "") {
                                        echo 0;
                                    } else {
                                        echo $View->totalkomen;
                                    }
                                    ?>
                                </li>
                            </ul>
                            <div class="entry-content notopmargin">
                                <?= $View->post_content ?>
                                <div class="clear"></div>
                                <div class="si-share noborder clearfix">
                                    <span>Share this Post:</span>
                                    <div>
                                        <a href="http://www.facebook.com/sharer.php?u=<?= base_url('News/Read/' . $View->PostID . ''); ?>" target="_new" class="social-icon si-borderless si-facebook">
                                            <i class="icon-facebook"></i>
                                            <i class="icon-facebook"></i>
                                        </a>
                                        <a href="https://twitter.com/intent/tweet?text=<?= base_url('News/Read/' . $View->PostID . ''); ?>" target="_new" class="social-icon si-borderless si-twitter">
                                            <i class="icon-twitter"></i>
                                            <i class="icon-twitter"></i>
                                        </a>
                                        <a href="http://pinterest.com/pin/create/link/?url=<?= base_url('News/Read/' . $View->PostID . ''); ?>" target="_new" class="social-icon si-borderless si-pinterest">
                                            <i class="icon-pinterest"></i>
                                            <i class="icon-pinterest"></i>
                                        </a>
                                        <a href="https://plus.google.com/share?url=<?= base_url('News/Read/' . $View->PostID . ''); ?>" target="_new" class="social-icon si-borderless si-gplus">
                                            <i class="icon-gplus"></i>
                                            <i class="icon-gplus"></i>
                                        </a>
                                        <a href="https://mail.google.com/mail/?view=cm&to={email_address}&su=<?= $View->post_title ?>&body=<?= base_url('News/Read/' . $View->PostID . ''); ?>" target="_new" class="social-icon si-borderless si-email3">
                                            <i class="icon-email3"></i>
                                            <i class="icon-email3"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="post-navigation clearfix">

                            <div class="col_half nobottommargin">
                                <?php $prev = $View->PostID - 1 ?>
                                <a href="<?= base_url('News/Read/' . $prev . ''); ?>"><div style="font-size:20px;opacity: 1.27861;"><i class="icon-angle-left"></i>  Previous</div><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
                            </div>

                            <div class="col_half col_last tright nobottommargin">
                                <?php $next = $View->PostID + 1 ?>
                                <a href="<?= base_url('News/Read/' . $next . ''); ?>"><div style="font-size:20px;opacity: 1.27861;">Next  <i class="icon-angle-right"></i></div><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
                            </div>

                        </div>
                        <div class="line"></div>
                        <div class="card">
                            <div class="card-header">Posted by : <i class="text-info"><?= $View->nama ?></i></div>
                            <div class="card-body">
                                <div class="author-image">
                                    <img src="<?= base_url($View->pict1); ?>" class="rounded-circle"/>
                                </div>
                                <?= $View->quote ?>
                            </div>
                        </div>
                        <div class="line"></div>
                        <h4>Related Post</h4>
                        <?php
                        foreach ($Related as $Related) {
                            echo '<div class="related-posts clearfix">
                            <div class="mpost clearfix">
                                <div class="entry-image">
                                    <a href="' . base_url($Related->pict1) . '" data-lightbox="image">'
                            . '<img src="' . base_url($Related->pict1) . '" class="image_fade">
                                        </a>
                                </div>
                                <div class="entry-c">
                                    <div class="entry-title">
                                        <h4><a href="' . base_url($Related->PostID) . '">' . $Related->post_title . '</a></h4>
                                    </div>
                                    <ul class="entry-meta clearfix">
                                        <li><i class="icon-calendar3"></i> ' . $Related->post_date = date("d F Y") . '</li>
                                        <li><a href="#"><i class="icon-comments"></i>' . $Related->totalkomen . '</a></li>
                                    </ul>
                                    <div class="entry-content">
                                    ' . character_limiter($Related->post_content, 200) . '
                                    </div>
                                </div>
                            </div>
                        </div><div style="clear:both;margin:50px 0px;"></div>';
                        }
                        ?>
                        <div id="comments" class="clearfix">

                            <h3 id="comments-title"><span><?php
                                    if ($View->comment_content == "") {
                                        echo 0;
                                    } else {
                                        echo $View->totalkomen;
                                    }
                                    ?></span> Comments</h3>
                            <ol class="commentlist clearfix">
                                <?php
                                foreach ($Komentar as $Komentar) {
                                    echo '<li class="comment even thread-even depth-1" id="li-comment-1">
                                    <div id="comment-1" class="comment-wrap clearfix">
                                        <div class="comment-meta">
                                            <div class="comment-author vcard">
                                                <span class="comment-avatar clearfix">
                                                    <img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60" class="avatar avatar-60 photo avatar-default" width="60" height="60">
                                                </span>
                                            </div>
                                        </div>
                                        <div class="comment-content clearfix">
                                            <div class="comment-author">' . $Komentar->comment_name . '<span>' . $Komentar->comment_date = date("d F Y") . ' at ' . $Komentar->comment_date = date("h:i A.") . '</span></div>

                                            <p class=text-justify>
                                                ' . $Komentar->comment_content . '
                                            </p>
                                        </div>

                                        <div class="clear"></div>
                                    </div>
                                </li>';
                                }
                                ?>
                            </ol>
                            <div class="clear"></div>
                            <div id="respond" class="clearfix">
                                <h3>Leave a <span>Comment</span></h3>
                                <form class="clearfix" action="#" method="post" id="commentform">
                                    <div class="col_one_third">
                                        <label for="author">Name</label>
                                        <input name="author" id="author" value="" size="22" tabindex="1" class="sm-form-control" type="text">
                                    </div>
                                    <div class="col_one_third">
                                    </div>
                                    <div class="col_one_third col_last">
                                        <label for="email">Email</label>
                                        <input name="email" id="email" value="" size="22" tabindex="2" class="sm-form-control" type="text">
                                    </div>
                                    <div class="clear"></div>
                                    <div class="col_full">
                                        <label for="comment">Comment</label>
                                        <textarea name="comment" cols="58" rows="7" tabindex="4" class="sm-form-control"></textarea>
                                    </div>
                                    <div class="col_full nobottommargin">
                                        <button name="submit" type="submit" id="submit-button" tabindex="5" value="Submit" class="button button-3d nomargin">Submit Comment</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <div style="clear:both;margin:5% 0px;"></div>
            <?php echo $this->view('Footer'); ?>
        </div>
    </body>
    <?php $this->view('FooterScript'); ?>

</html>