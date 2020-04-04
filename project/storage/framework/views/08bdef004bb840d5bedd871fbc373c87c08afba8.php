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
<br>
<br>
<hr>
<form action="/stripe" method="post" id="paymentForm"><?php echo e(csrf_field()); ?>

    <div class="form-row">
      <label for="card-element">
        <h3>Credit or Debit Card</h3>
      </label>
      <div id="card-element">
        <!-- A Stripe Element will be inserted here. -->
      </div>
  
      <!-- Used to display form errors. -->
      <div id="card-errors" role="alert"></div>
    </div>
  
    <button class="check_out">Submit Payment</button>
  </form>
  <script>
        var stripe = Stripe('pk_test_a2IgyTIXCKC9m0NOS868IHaJ');
        var elements = stripe.elements();
      // Custom styling can be passed to options when creating an Element.
      var style = {
  base: {
    color: '#32325d',
    lineHeight: '30px',
    fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
    fontSmoothing: 'antialiased',
    fontSize: '30px',
    '::placeholder': {
      color: '#aab7c4'
    }
  },
  invalid: {
    color: '#fa755a',
    iconColor: '#fa755a'
  }
};

// Create an instance of the card Element.
var card = elements.create('card', {style: style});

// Add an instance of the card Element into the `card-element` <div>.
card.mount('#card-element');
card.addEventListener('change', function(event) {
  var displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});

// Create a token or display an error when the form is submitted.
var form = document.getElementById('paymentForm');
form.addEventListener('submit', function(event) {
  event.preventDefault();

  stripe.createToken(card).then(function(result) {
    if (result.error) {
      // Inform the customer that there was an error.
      var errorElement = document.getElementById('card-errors');
      errorElement.textContent = result.error.message;
    } else {
      // Send the token to your server.
      stripeTokenHandler(result.token);
    }
  });
});

function stripeTokenHandler(token) {
    //console.log(token);
  // Insert the token ID into the form so it gets submitted to the server
  var form = document.getElementById('paymentForm');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form
  form.submit();
}
  </script>
</div>

</div>
</section>
<?php $__env->stopSection(); ?>
<?php
Session::forget('grand_total');
Session::forget('order_id');

?>
<?php echo $__env->make('layouts.frontLayout.front_design', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>