<html Post-ClickTrap>
    <?php $this->view('Head'); ?>
    <body class="stretched">
        <div id=wrapper class=clearfix>
            <?php echo $this->view('Header'); ?>
            <section id=page-title>
                <div class="container clearfix">
                    <h1>Suara Mahasiswa</h1>
                    <ol class=breadcrumb>
                        <li class=breadcrumb-item><a href=<?= base_url(); ?>>Home</a></li>
                        <li class="breadcrumb-item active" aria-current=page>Suara Mahasiswa</li>
                    </ol>
                </div>
            </section>
            <div style="clear:both;margin:3% 0px;"></div>
            <div class="container">
                <?php
                echo form_open(base_url('Suara/SendMessage'));
                echo '<div class="col_one_third">
                                                <label for="template-contactform-name">Name <small class="text-danger">*</small></label>
' . form_input('nametxt', '', 'placeholder="Nama Lengkap" class="sm-form-control" required type="text"') . '
                                            </div>
                                            <div class="col_one_third">
                                                <label for="template-contactform-email">Email <small>*</small></label>
' . form_input('emailtxt', '', 'class="email sm-form-control" required type="email" placeholder="example@gmail.com"') . '
                                            </div>
                                            <div class="col_one_third col_last">
                                                <label for="template-contactform-phone">Phone</label>
' . form_input('phtxt', '', 'class="sm-form-control" required type="text" placeholder="+62 896-2013-2007"') . '
                                            </div>
                                            <div class="clear"></div>
                                            <div class="col_two_third">
                                                <label for="template-contactform-subject">Subject <small>*</small></label>
' . form_input('sbjtxt', '', 'class="sm-form-control" maxlength="100" required type="text" placeholder="Kritik, Keluhan, Masukan, Aspirasi, dll."') . '
                                            </div>
                                            <div class="col_one_third col_last">
                                                <label for="template-contactform-phone">N I M</label>
' . form_input('nimtxt', '', 'placeholder="NO Induk Mahasiswa" class="sm-form-control" required type="text"') . '
                                            </div>
                                            <div class="clear"></div>
                                            <div class="col_full">
                                                <label for="template-contactform-message">Message <small>*</small></label>
' . form_textarea('msgtxt', '', 'class="sm-form-control" required rows="6" cols="30"') . '
                                            </div>

                                            <div class="col_one_third">
<p id="image_captcha" title="the code use case sensitive" class="refreshCaptcha">' . $images . '<a href="javascript:void(0);" style="margin:0px 10px;" title="Refresh Code" class="refreshCaptcha" ><img src="' . base_url('assets/images/preloader-dark.gif') . '" style="width:20px;height:20px;"/></a></p>
    <div style="clear:both;margin:10px 0px;"></div>
' . form_input('captchatxt', '', 'placeholder="enter the code" class="sm-form-control" required type="text"') . '
                                            </div>
                                            <div class="col_full">
' . form_submit('submitbtn', 'Send Message', 'class="btn btn-primary"') . '
                                            </div>';
                echo form_close();
                ?>
            </div>
            <footer id="footer" class="dark">
                <div class="container">
                    <div class="footer-widgets-wrap clearfix">
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
        </div>
    </body>
    <?php $this->view('FooterScript'); ?>
    <script>
        $(document).ready(function () {
            $('.refreshCaptcha').on('click', function () {
                $.get('<?php echo base_url('Suara/RefreshCaptcha'); ?>', function (data) {
                    $('#image_captcha').html(data);
                });
            });
        });
    </script>
</html>