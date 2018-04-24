<footer id="footer" class="dark">
    <div class="container">
        <div class="footer-widgets-wrap clearfix">
            <div class="col_two_third">
                <div class="col_one_third">
                    <div class="widget clearfix">
                        <h4>Alamat Kami</h4>
                        <div style="background:url('<?= base_url('assets/images/world-map.png'); ?>') no-repeat center center;background-size:100%"> <address> Jl Radin Inten II Duren Sawit Seberang<br> Pengadilan Tinggi Agama<br> DKI Jakarta, Jakarta Timur. </address> <abbr title="Phone Number"><strong>Renvill Yazhoki:</strong></abbr> (+62)838-7981-3388
                            <br> <abbr title="Phone Number"><strong>Gladis Mei Agusta:</strong></abbr> (+62)813-8036-8849
                            <br> <abbr title="Email Address"><strong>Email:</strong></abbr> humas@bemstikomcki.com </div>
                    </div>
                </div>
                <div class="col_one_third">
                    <div class="widget widget_links clearfix">
                        <h4>FOLLOW US</h4>
                        <div class="fb-page fb_iframe_widget" data-href="https://www.facebook.com/BEM-Stikom-CKI-1658323077719149/" data-small-header="true" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true" data-show-posts="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="adapt_container_width=false&amp;app_id=1590918427791514&amp;container_width=314&amp;height=140&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FBEM-Stikom-CKI-1658323077719149%2F&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=true&amp;show_posts=false&amp;small_header=true&amp;width=268"> <span> <iframe name="f1ae9fba83d361e" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:page Facebook Social Plugin" style="border:medium none;visibility:visible;width:268px;height:140px" src="https://www.facebook.com/v2.4/plugins/page.php?adapt_container_width=false&amp;app_id=1590918427791514&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FFdM1l_dpErI.js%3Fversion%3D42%23cb%3Df231b39a8bfa0f2%26domain%3Dbemstikomcki.com%26origin%3Dhttps%253A%252F%252Fbemstikomcki.com%252Ff29703a2e6a53b6%26relation%3Dparent.parent&amp;container_width=314&amp;height=140&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FBEM-Stikom-CKI-1658323077719149%2F&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=true&amp;show_posts=false&amp;small_header=true&amp;width=268" class="" width="268px" height="140px" frameborder="0"> </iframe> </span> </div>
                    </div>
                </div>
                <div class="col_one_third col_last">
                    <div class="widget clearfix">
                        <h4>Recent Posts</h4>
                        <?php foreach ($FootRecentPost as $recent) { ?>
                            <div id="post-list-footer">
                                <div class="spost clearfix">
                                    <div class="entry-c">
                                        <div class="entry-title">
                                            <h4><a href="<?= base_url('News/Read/' . $recent->PostID . ''); ?>"><?= $recent->post_title ?></a></h4> </div>
                                        <ul class="entry-meta">
                                            <li><?= $recent->post_date ?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col_one_third col_last">
                <div class="widget subscribe-widget clearfix">
                    <h5><strong>Subscribe</strong> to Our Newsletter to get Important News:</h5>
                    <div class="widget-subscribe-form-result"></div>
                    <form id="widget-subscribe-form" action="include/subscribe.php" role="form" method="post" class="nobottommargin">
                        <div class="input-group divcenter">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="icon-email2"></i></div>
                            </div>
                            <input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email">
                            <div class="input-group-append">
                                <button class="btn btn-success" type="submit">Subscribe</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div style="margin:20px 0px 0px 20%;">
                    <a href="https://www.facebook.com/bemstikomcki/" target="_new"
                       class="social-icon si-colored si-facebook" title="Facebook">
                        <i class="icon-facebook"></i>
                        <i class="icon-facebook2"></i>
                    </a>
                    <a href="https://twitter.com/bemstikomcki" target="_new"
                       class="social-icon si-colored si-twitter" title="Twitter">
                        <i class="icon-twitter"></i>
                        <i class="icon-twitter2"></i>
                    </a>
                    <a href="https://www.instagram.com/bemstikomcki/" target="_new"
                       class="social-icon si-colored si-instagram" title="Instagram">
                        <i class="icon-instagram"></i>
                        <i class="icon-instagram2"></i>
                    </a>
                    <a href="https://www.youtube.com/channel/UC8x3KvtVFNst6ZxNfgfCLDw" target="_new"
                       class="social-icon si-colored si-youtube" title="Youtube">
                        <i class="icon-youtube"></i>
                        <i class="icon-youtube-play"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div id="copyrights">
        <div class="text-center">
            Copyrights &copy;
            <?= date("Y"); ?> All Rights Reserved by BEMSTIKOMCKI.
        </div>
    </div>
</footer>
<div id="gotoTop" class="icon-angle-up"></div>