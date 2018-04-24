<head>
    <meta charset="utf-8" />
    <script language='javascript'>
        var txt = "<?= $TitlePage ?>";
        var kecepatan = 300;
        var segarkan = null;
        function bergerak() {
            document.title = txt;
            txt = txt.substring(1, txt.length) + txt.charAt(0);
            segarkan = setTimeout("bergerak()", kecepatan);
        }
        bergerak();
    </script>
    <meta name="description" content="Latest updates and statistic charts">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--begin::Web font -->
    <script src="<?= base_url('assets/ademin/js/webfont.js'); ?>"></script>
    <script>
        WebFont.load({
            google: {"families": ["Poppins:300,400,500,600,700", "Roboto:300,400,500,600,700"]},
            active: function () {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <link href="<?= base_url('assets/ademin/css/fullcalendar.bundle.css'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?= base_url('assets/ademin/css/vendors.bundle.css');?>" rel="stylesheet" type="text/css" />
    <link href="<?= base_url('assets/ademin/css/style.bundle.css');?>" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="<?php echo base_url('assets/images/favbem.png');?>" />
</head>