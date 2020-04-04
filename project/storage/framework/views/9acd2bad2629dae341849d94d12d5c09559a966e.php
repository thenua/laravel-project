<?php $__env->startSection('content'); ?>

<div id="content">
    <div id="content-header">
      <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
        <a href="#">Products Attributes</a> <a href="#" class="current">Add Products Attributes</a> </div>
      <h1>Products Attributes</h1>
      <?php if(Session::has('flash_message_error')): ?>
        <div class="alert alert-error alert-block">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
            </button>
        <strong><?php echo e(session('flash_message_error')); ?></strong>
        </div>
        <?php endif; ?>
        <?php if(Session::has('flash_message_success')): ?>
        <div class="alert alert-success alert-block">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
            </button>
        <strong><?php echo e(session('flash_message_success')); ?></strong>
        </div>
        <?php endif; ?>
    </div>
    <div class="container-fluid"><hr>
      <div class="row-fluid">
        <div class="span12">
          <div class="widget-box">
            <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
              <h5>Add Products Attributes</h5>
            </div>
            <div class="widget-content nopadding">
                <form enctype="multipart/form-data" class="form-horizontal" method="post" action="<?php echo e(url('/admin/add-attributes/'.$productDetails->id)); ?>"
                name="add_attribute" id="add_attribute"> <?php echo e(csrf_field()); ?>

                <input type="hidden" name="product_id" value="<?php echo e($productDetails->id); ?>">
                   <div class="control-group">
                    <label class="control-label">Product Name</label>
                   <label class="control-label"><strong><?php echo e($productDetails->product_name); ?></strong></label>
                   </div>
                   <div class="control-group">
                    <label class="control-label">Product Code</label>
                    <label class="control-label"><strong><?php echo e($productDetails->product_code); ?></strong></label>
                     </div>
                     <div class="control-group">
                    <label class="control-label">Product Color</label>
                    <label class="control-label"><strong><?php echo e($productDetails->product_color); ?></strong></label>
                       </div>
                       <div class="control-group">
                        <label class="control-label"></label>
                        <div class="field_wrapper">
                        <div>
                        <input type="text" name="sku[]" id="sku" placeholder="SKU" style="width:120px;" required/>
                        <input type="text" name="size[]" id="size" placeholder="Size" style="width:120px;" required/>
                        <input type="text" name="price[]" id="price" placeholder="Price" style="width:120px;" required/>
                        <input type="text" name="stock[]" id="stock" placeholder="Stock" style="width:120px;"required/>
                        <a href="javascript:void(0);" class="add_button" title="Add field">Add</a>
                            </div>
                        </div>
                        </div>
                   <div class="form-actions">
                     <input type="submit" value="Add Attributes" class="btn btn-success">
                   </div>
                 </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
        <div class="widget-box">
        <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
        <h5>View Attributes</h5>
        </div>
        <div class="widget-content nopadding">
        <form enctype="multipart/form-data" action="<?php echo e(url('/admin/edit-attributes/'.$productDetails->id)); ?>" method="post"> <?php echo e(csrf_field()); ?>

        <table class="table table-bordered data-table">
          <thead>
            <tr>
              <th>Attribute ID</th>
              <th>SKU</th>
              <th>Size</th>
              <th>Price</th>
              <th>Stock</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
          <?php $__currentLoopData = $productDetails['attributes']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <tr class="gradeX">
              <td><input type="hidden" name="idAttr[]" value="<?php echo e($attribute->id); ?>"> <?php echo e($attribute->id); ?></td>
              <td><?php echo e($attribute->sku); ?></td>
              <td><?php echo e($attribute->size); ?></td>
              <td><input type="type" name="price[]" value="<?php echo e($attribute->price); ?>"></td>
              <td><input type="type" name="stock[]" value="<?php echo e($attribute->stock); ?>"></td>
            <td class="center"><div class="fr">
              <input type="submit" value="Update" class="btn btn-primary btn-mini">
            <a  rel="<?php echo e($attribute->id); ?>" rel1="delete-attribute"
              href="javascript:" class="btn btn-danger btn-mini deleteRecord">Delete</a></div></td>              
          </tr> 
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </tbody>
        </table>
          </form>
        </div>
        </div>
        </div>
        </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.adminLayout.admin_design', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>