<?php $__env->startSection('content'); ?>

<section id="slider">
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
            <img src="<?php echo e(url('images/frontend_img/banners/banner1.png')); ?>" alt="">
            </div>
            <div class="item">
            <img src="<?php echo e(url('images/frontend_img/banners/banner2.png')); ?>" alt="">
            </div>
            
            <div class="item">
            <img src="<?php echo e(url('images/frontend_img/banners/banner3.png')); ?>" alt="">
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
</section>

<section>
<div class="container">
<div class="row">
<div class="col-sm-3">
<?php echo $__env->make('layouts.FrontLayout.front_sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</div>

<div class="col-sm-9 padding-right">
    <div class="features_items">
        <h2 class="title text-center">All Display Products (<?php echo e($productsAll->total()); ?>)</h2>
        <?php $__currentLoopData = $productsAll; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-sm-4">
            <div class="product-image-wrapper">
                <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="<?php echo e(asset('images/backend_img/products/small/'.$product->image)); ?>" alt="" />
                        <h2>INR <?php echo e($product->price); ?></h2>
                        <p><?php echo e($product->product_name); ?></p>
                        <a href="<?php echo e(url('product/'.$product->id)); ?>" class="btn btn-default add-to-cart">Detail Page</a>
                        </div>
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
    </div>
    <?php echo e($productsAll->links()); ?>

</div>
</div>
</div>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontLayout.front_design', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>