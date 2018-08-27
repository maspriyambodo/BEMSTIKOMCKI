<!DOCTYPE html> <html dir=ltr lang=en-US> <?= $this->view('Head'); ?> <body class=stretched> <div id=wrapper class=clearfix> <header id=header class=full-header> <div id=header-wrap> <div class="container clearfix"> <div id=logo class=divcenter> <a href=<?= base_url(); ?> class=standard-logo data-dark-logo=<?= base_url('assets/images/bemico.png'); ?>> <img src=<?= base_url('assets/images/bemico.png'); ?> alt="BEM STIKOM CKI" class=divcenter> </a> <a href=<?= base_url(); ?> class=retina-logo data-dark-logo=<?= base_url('assets/images/bemico.png'); ?>> <img src=<?= base_url('assets/images/bemico.png'); ?>> </a> </div> </div> </div> </header> <section id=content> <div class=content-wrap> <div class="container clearfix"> <div class="heading-block center nobottomborder"> <h1>Site is Under Maintenance</h1> <span>Please check back in sometime.</span> </div> <div class="col_one_third topmargin"> <div class="feature-box fbox-center fbox-light fbox-plain"> <div class=fbox-icon> <i class=icon-warning-sign></i> </div> <h3>Why is the Site Down?</h3> <p>The site is under maintenance probably because we are working to improve this website drastically.</p> </div> </div> <div class="col_one_third topmargin"> <div class="feature-box fbox-center fbox-light fbox-plain"> <div class=fbox-icon> <i class=icon-time></i> </div> <h3>What is the Downtime?</h3> <p>We are usually back within 10-15 minutes but it definitely depends on the issue.</p> </div> </div> <div class="col_one_third topmargin col_last"> <div class="feature-box fbox-center fbox-light fbox-plain"> <div class=fbox-icon> <i class=icon-email3></i> </div> <h3>Do you need Support?</h3> <p>You may simply send us an Email at <a href=mailto:admin@bemstikomcki.com>admin@bemstikomcki.com</a> if you need urgent support.</p> </div> </div> </div> </div> </section> </div> <div id=gotoTop class=icon-angle-up></div> <?= $this->view('FooterScript'); ?> </body> </html>