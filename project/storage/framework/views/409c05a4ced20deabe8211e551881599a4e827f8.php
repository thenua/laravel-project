<?php $__env->startSection('content'); ?>

<div id="contact-page" class="container" >
<div class="bg">
<div class="row">    		
<div class="col-sm-8">    			   			
<h2 class="title text-center">Contact <strong>Us</strong></h2> 
<div class="status alert alert-success" style="display: none"></div>
<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
<div class="form-group col-md-6">
    <input type="text" name="name" class="form-control" required="required" placeholder="Name">
</div>
<div class="form-group col-md-6">
    <input type="email" name="email" class="form-control" required="required" placeholder="Email">
</div>
<div class="form-group col-md-12">
    <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
</div>
<div class="form-group col-md-12">
    <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
</div>                        
<div class="form-group col-md-12">
    <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
</div>
</form>   			    				    				
<div id="gmap" class="contact-map">
</div>
</div>
<div class="col-sm-4">
<div class="contact-info">
<h2 class="title text-center">Contact Info</h2>
<address>
    <p>Shopping-Website</p>
    <p>Lovely Professional University</p>
    <p>India, Punjab</p>
    <p>Mobile: +91 9729972895</p>
    <p>Fax: 0-0000-0000</p>
    <p>Email: devesh.chaudhary.30994@gmail.com</p>
</address>
<div class="social-networks">
    <h2 class="title text-center">Social Networking</h2>
    <ul>
        <li>
            <a href="#"><i class="fa fa-facebook"></i></a>
        </li>
        <li>
            <a href="#"><i class="fa fa-twitter"></i></a>
        </li>
        <li>
            <a href="#"><i class="fa fa-google-plus"></i></a>
        </li>
        <li>
            <a href="#"><i class="fa fa-youtube"></i></a>
        </li>
    </ul>
</div>
</div>
</div>			 		
</div>    	  
</div>	
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontLayout.front_design', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>