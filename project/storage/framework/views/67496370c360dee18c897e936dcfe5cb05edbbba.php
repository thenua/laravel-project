<?php $__env->startSection('content'); ?>

<section id="slider"><!--slider-->
<div class="container">
<div class="row">
<div class="col-sm-12">
    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#slider-carousel" data-slide-to="1"></li>
            <li data-target="#slider-carousel" data-slide-to="2"></li>
        </ol>
        
        <div class="carousel-inner">
            <div class="item active">
                <div class="col-sm-6">
                    <h1><span>Hyper</span>-Market</h1>
                    <h2>Online Purchase Market Place</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    <button type="button" class="btn btn-default get">Get it now</button>
                </div>
                <div class="col-sm-6">
                    <img src="<?php echo e(asset('images/frontend_img/home/girl1.jpg')); ?>" class="girl img-responsive" alt="" />
                    <img src="<?php echo e(asset('images/frontend_img/home/pricing.png')); ?>"  class="pricing" alt="" />
                </div>
            </div>
            <div class="item">
                <div class="col-sm-6">
                    <h1><span>Hyper</span>-Market</h1>
                    <h2>Online Purchase Market Place</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    <button type="button" class="btn btn-default get">Get it now</button>
                </div>
                <div class="col-sm-6">
                    <img src="<?php echo e(asset('images/frontend_img/home/girl2.jpg')); ?>" class="girl img-responsive" alt="" />
                    <img src="<?php echo e(asset('images/frontend_img/home/pricing.png')); ?>"  class="pricing" alt="" />
                </div>
            </div>
            
            <div class="item">
                <div class="col-sm-6">
                    <h1><span>Hyper</span>-Market</h1>
                    <h2>Online Purchase Market Place</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    <button type="button" class="btn btn-default get">Get it now</button>
                </div>
                <div class="col-sm-6">
                    <img src="<?php echo e(asset('images/frontend_img/home/girl3.jpg')); ?>" class="girl img-responsive" alt="" />
                    <img src="<?php echo e(asset('images/frontend_img/home/pricing.png')); ?>" class="pricing" alt="" />
                </div>
            </div>
            
        </div>
        
        <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
            <i class="fa fa-angle-left"></i>
        </a>
        <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
            <i class="fa fa-angle-right"></i>
        </a>
    </div>
    
</div>
</div>
</div>
</section><!--/slider-->

<section>
<div class="container">
<div class="row">
<div class="col-sm-3">
 <?php echo $__env->make('layouts.FrontLayout.front_sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</div>

<div class="col-sm-9 padding-right">
    <div class="features_items"><!--features_items-->
    <h2 class="title text-center"><?php echo e($categoryDetails->Name); ?></h2>
        <?php $__currentLoopData = $productsAll; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-sm-4">
            <div class="product-image-wrapper">
                <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="<?php echo e(asset('images/backend_img/products/small/'.$product->image)); ?>" alt="" />
                        <h2>PKR <?php echo e($product->price); ?></h2>
                        <p><?php echo e($product->product_name); ?></p>
                        <a href="<?php echo e(url ('product/'.$product->id)); ?>" class="btn btn-default add-to-cart">Detail Page</a>
                        </div>
                        <!--<div class="product-overlay">
                            <div class="overlay-content">
                                <h2>PKR <?php echo e($product->price); ?></h2>
                                <p><?php echo e($product->product_name); ?></p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>
                        </div>-->
                </div>
                <div class="choose">
                    <ul class="nav nav-pills nav-justified">
                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        
    </div><!--features_items-->
    
</div>
</div>
</div>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontLayout.front_design', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>