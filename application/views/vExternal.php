<!DOCTYPE html>
<html class="Post-ClickTrap">
    <?php $this->view('Head'); ?>
    <body class=stretched>
        <div id=wrapper class=clearfix>
            <?php echo $this->view('Header'); ?>
            <section id="slider" class="slider-element slider-parallax swiper_wrapper full-screen clearfix">
				<div class="slider-parallax-inner">
					<div class="swiper-container swiper-parent" style="max-width:100%;width:100%">
						<div class="swiper-wrapper">
							<div class="swiper-slide dark" style="background-image:url('<?php echo base_url('assets/images/slider/ngasal.jpg');?>')">
								<div class="container clearfix">
									<div class="slider-caption slider-caption-center">
										<h2 data-caption-animate="fadeInUp"><div id="countdown" data-caption-animate="fadeInUp" data-caption-delay="150" class="pull-left"></div></h2>
										<h1 data-caption-animate="fadeInUp" data-caption-delay="100">CKI External  2 0 1 8</h1>
										<button class="btn btn-danger" style="margin-top: 25px;" onclick="tambah_peserta()" data-caption-animate="fadeInUp" data-caption-delay="200">Registrasi disini!</button>
								</div>
							</div>
							
						</div>
						<div class="slider-arrow-left"><i class="icon-angle-left"></i></div>
						<div class="slider-arrow-right"><i class="icon-angle-right"></i></div>
					</div> <a href="#" data-scrollto="#content" data-offset="100" class="dark one-page-arrow"><i class="icon-angle-down infinite animated fadeInDown"></i></a> </div>
			</section>
            <section id="content">
				<div class="content-wrap">
					<div class="container">
					<div class="row">
					
					</div>
					</div>
				</div>
				<div class="content-wrap text-center">
				
				</div>
			</section>
			<?= $this->view('Footer'); ?>
<!--===============================================================================================-->
	<script >
	// set the date we're counting down to
var target_date = new Date('november, 22, 2018').getTime();
 
 // variables for time units
 var days, hours, minutes, seconds;
  
 // get tag element
 var countdown = document.getElementById('countdown');
  
 // update the tag with id "countdown" every 1 second
 setInterval(function () {
  
	 // find the amount of "seconds" between now and target
	 var current_date = new Date().getTime();
	 var seconds_left = (target_date - current_date) / 1000;
  
	 // do some time calculations
	 days = parseInt(seconds_left / 86400);
	 seconds_left = seconds_left % 86400;
	  
	 hours = parseInt(seconds_left / 3600);
	 seconds_left = seconds_left % 3600;
	  
	 minutes = parseInt(seconds_left / 60);
	 seconds = parseInt(seconds_left % 60);
	  
	 // format countdown string + set tag value
	 countdown.innerHTML = '<span class="days">' + days +  ' <label>Days</label></span> <span class="hours">' + hours + ' <label>Hours</label></span> <span class="minutes">'
	 + minutes + ' <label>Minutes</label></span> <span class="seconds">' + seconds + ' <label>Seconds</label></span>';  
  
 }, 1000);
	</script>
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<script>
		function tambah_peserta(){
			save_method = "tambah_peserta";
			$('#form')[0].reset;
			$('.form-group').removeClass('has-error');
			$('.help-block').empty();
			$('#modal_form').modal('show');
			$('#modal_form').fadeIn(250);
			$('.modal-title').text('Form Pendaftaran');

		}
	</script>
	<!-- Bootstrap modal -->
<div class="modal fade" id="modal_form" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                
                <h3 class="modal-title">Person Form</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-horizontal">
                    <input type="hidden" value="" name="id"/> 
                    <div class="form-body">
                        <div class="form-group">
                            <label class="black control-label col-md-4">NIM</label>
                            <div class="col-md-9">
                                <input name="firstName" placeholder="First Name" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="black control-label col-md-3">Nama</label>
                            <div class="col-md-9">
                                <input name="lastName" placeholder="Last Name" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="black control-label col-md-3">Gender</label>
                            <div class="col-md-9">
                                <select name="gender" class="form-control">
                                    <option value="">--Select Gender--</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="black control-label col-md-3">Address</label>
                            <div class="col-md-9">
                                <textarea name="address" placeholder="Address" class="form-control"></textarea>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="black control-label col-md-3">Date of Birth</label>
                            <div class="col-md-9">
                                <input name="dob" placeholder="yyyy-mm-dd" class="form-control datepicker" type="date">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">Save</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->

    </body>
    <?php $this->view('FooterScript'); ?>
    
</html>