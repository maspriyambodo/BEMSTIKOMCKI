<?php
foreach ($profile as $new) {
    echo '<div class="single-product shop-quick-view-ajax clearfix">

    <div class="ajax-modal-title">
        <h2 class="text-uppercase">' . $new->nama . '</h2>
            <p class="text-muted">' . $new->tmp_lahir . ', ' . $new->tgl_lahir . '</p>
    </div>

    <div class="product modal-padding clearfix">

        <div class="col_half nobottommargin">
            <div class="product-image">
                <div class="fslider" data-pagi="false">
                    <div class="flexslider">
                        <div class="slider-wrap">
                            <div class="slide"><a href=' . base_url($new->pict1) . '>
                                    <img src=' . base_url($new->pict1) . '></a></div>
                            <div class="slide"><a href=' . base_url($new->pict2) . '>
                                    <img src=' . base_url($new->pict2) . '></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col_half nobottommargin col_last product-desc">
            <div class="product-price">
                <ins class="text-uppercase">' . $new->jabatan . '</ins>
            </div>
            <div class="clear"></div>
            <div class="line"></div>
            <a href=' . $new->Facebook . ' target=_new class="social-icon si-borderless si-text-color si-facebook">
            <i class="icon-facebook"></i>
            <i class="icon-facebook"></i>
            </a>
            <a href="' . $new->Googleplus . '" target=_new class="social-icon si-borderless si-text-color si-gplus" title="Google Plus">
            <i class="icon-gplus"></i>
            <i class="icon-gplus"></i>
            </a>
            <a href="' . $new->LinkedIn . '" target=_new class="social-icon si-borderless si-text-color si-linkedin" title="Linked In">
            <i class="icon-linkedin"></i>
            <i class="icon-linkedin"></i>
            </a>
            <a href="' . $new->Instagram . '" target=_new class="social-icon si-borderless si-text-color si-instagram" title="Instagram">
            <i class="icon-instagram"></i>
            <i class="icon-instagram"></i>
            </a>
            <a href="' . $new->Twitter . '" target=_new class="social-icon si-borderless si-text-color si-twitter" title="Twitter">
            <i class="icon-twitter"></i>
            <i class="icon-twitter"></i>
            </a>
            <a href="' . $new->Youtube . '" target=_new class="social-icon si-borderless si-text-color si-youtube" title="Youtube">
            <i class="icon-youtube"></i>
            <i class="icon-youtube"></i>
            </a>
            <div class="line"></div>
            <p>" ' . $new->quote . ' "</p>
            <ul class="skills">
                <li data-percent="' . $new->SystemAnalyst . '">
                        <span>System Analyst</span>
                        <div class="progress skills-animated" style="width: ' . $new->SystemAnalyst . '%;">
                        <div class="progress-percent">
                        <div class="counter counter-inherit counter-instant">
                        <span data-from="0" data-to="' . $new->SystemAnalyst . '" '
    . 'data-refresh-interval="30" data-speed="1000">' . $new->SystemAnalyst . '</span>%</div></div>
                        </div>
                </li>
                <li data-percent="' . $new->WebDesigner . '">
                        <span>Web Designer</span>
                        <div class="progress skills-animated" style="width: ' . $new->WebDesigner . '%;">
                        <div class="progress-percent">
                        <div class="counter counter-inherit counter-instant">
                        <span data-from="0" data-to="' . $new->WebDesigner . '" '
    . 'data-refresh-interval="30" data-speed="1000">' . $new->WebDesigner . '</span>%</div></div>
                        </div>
                </li>
                <li data-percent="' . $new->GraphicDesigner . '">
                        <span>Graphic Designer</span>
                        <div class="progress skills-animated" style="width: ' . $new->GraphicDesigner . '%;">
                        <div class="progress-percent">
                        <div class="counter counter-inherit counter-instant">
                        <span data-from="0" data-to="' . $new->GraphicDesigner . '" '
    . 'data-refresh-interval="30" data-speed="1000">' . $new->GraphicDesigner . '</span>%</div></div>
                        </div>
                </li>
                <li data-percent="' . $new->NetworkAdministrator . '">
                        <span>Network Administrator</span>
                        <div class="progress skills-animated" style="width: ' . $new->NetworkAdministrator . '%;">
                        <div class="progress-percent">
                        <div class="counter counter-inherit counter-instant">
                        <span data-from="0" data-to="' . $new->NetworkAdministrator . '" '
    . 'data-refresh-interval="30" data-speed="1000">' . $new->NetworkAdministrator . '</span>%</div></div>
                        </div>
                </li>
                <li data-percent="' . $new->SoftwareEngineer . '">
                        <span>Software Engineer</span>
                        <div class="progress skills-animated" style="width: ' . $new->SoftwareEngineer . '%;">
                        <div class="progress-percent">
                        <div class="counter counter-inherit counter-instant">
                        <span data-from="0" data-to="' . $new->SoftwareEngineer . '" '
    . 'data-refresh-interval="30" data-speed="1000">' . $new->SoftwareEngineer . '</span>%</div></div>
                        </div>
                </li>
            </ul>
        </div>

    </div>

</div>';
}
?>;