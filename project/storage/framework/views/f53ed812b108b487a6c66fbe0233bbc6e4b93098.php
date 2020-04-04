<?php $__env->startSection('content'); ?>

<section id="cart_items">
<div class="container">
<div class="breadcrumbs">
<ol class="breadcrumb">
<li><a href="#">Home</a></li>
<li class="active">Thanks</li>
</ol>
</div>
</div>
</section> 

<section id="do_action">
<div class="container">
<div class="heading" align="center">
<h3>YOUR ORDER HAS BEEN PLACED </h3>
<p>Your order number is <?php echo e(Session::get('order_id')); ?> and total payable about is PKR <?php echo e(Session::get('grand_total')); ?></p>
<p>Please make Payment by clicking on below Payment Button</p>
<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post"> <?php echo e(csrf_field()); ?>

  <input type="hidden" name="cmd" value="_xclick">
  <input type="hidden" name="business" value="amaanchaudhary17-facilitator@gmail.com">
  <input type="hidden" name="item_name" value="<?php echo e(Session::get('order_id')); ?>">
  <input type="hidden" name="currency_code" value="USD">
  <input type="hidden" name="amount" value="<?php echo e(Session::get('grand_total')); ?>">
  <input type="image" src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_paynow_107x26.png" alt="Buy Now">
  <img alt="" src="https://paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

</div>

</div>
</section>
<?php $__env->stopSection(); ?>
<?php
Session::forget('grand_total');
Session::forget('order_id');

?>
<?php echo $__env->make('layouts.frontLayout.front_design', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>