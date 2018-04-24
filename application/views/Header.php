<header id="header" class="transparent-header full-header">
    <div id="header-wrap">
        <div class="container clearfix">
            <div id="primary-menu-trigger">
                <i class="icon-reorder"></i>
            </div>
            <div id="logo">
                <a href="<?php echo base_url(); ?>" class="standard-logo" 
                   data-dark-logo="<?php echo base_url('assets/images/bemico.png'); ?>">
                    <img src="<?php echo base_url('assets/images/bemico.png'); ?>">
                </a> <a href="<?php echo base_url(); ?>" class="retina-logo" 
                        data-dark-logo="<?php echo base_url('assets/images/bemico.png'); ?>">
                    <img src="<?php echo base_url('assets/images/bemico.png'); ?>">
                </a>
            </div>
            <nav id="primary-menu" class="dark">
                <ul>
                    <li>
                        <a href="<?php echo base_url(); ?>">
                            <div>Home</div>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('Organization/Structure'); ?>">
                            <div>Organization</div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>U K M</div>
                        </a>
                        <ul>
                            <li>
                                <a href="<?php echo base_url('UKM/IT'); ?>">
                                    <div>I T</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/PCR'); ?>">
                                    <div>P C R</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/LDK'); ?>">
                                    <div>L D K</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/Rokris'); ?>">
                                    <div>ROKRIS</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/CPC'); ?>">
                                    <div>C P C</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/OlahRaga'); ?>">
                                    <div>OLAH RAGA</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/Matras'); ?>">
                                    <div>MATRAS</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('UKM/Musik'); ?>">
                                    <div>MUSIK</div>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<?php echo base_url('News'); ?>">
                            <div>News</div>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('Gallery'); ?>">
                            <div>Gallery</div>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo base_url('Suara'); ?>">
                            <div>Suara Mahasiswa</div>
                        </a>
                    </li>
                </ul>
                <div id="top-search"> <a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
                    <form action="<?php echo base_url(''); ?>" method="post">
                        <input type="text" name="q" class="form-control" value="" placeholder="Type & Hit Enter.."> </form>
                </div>
            </nav>
        </div>
    </div>
</header>