<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::match(['get','post'],'/admin', 'AdminController@login');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/','IndexController@index');
Route::get('/contact-us','IndexController@contactUs');

Route::get('/products/{url}','ProductsController@products');

Route::get('product/{id}','ProductsController@product');
Route::match(['get','post'],'/cart', 'ProductsController@cart');

Route::match(['get','post'],'/add-cart', 'ProductsController@addtocart');

Route::get('cart/delete-product/{id}','ProductsController@deleteCartProduct');


Route::get('/cart/update-quantity/{id}/{quantity}','ProductsController@updateCartQuantity');

Route::get('/get-product-price','ProductsController@getProductPrize');

Route::post('/cart/apply-coupon','ProductsController@ApplyCoupon');

Route::get('/login-register','UsersController@userLoginRegister');
Route::post('/user-register','UsersController@register');
Route::post('/user-login','UsersController@login');
Route::get('user-logout','UsersController@logout');


Route::group(['middleware' => ['frontlogin']],function(){

Route::match(['get','post'],'account','UsersController@account');

Route::post('/check-user-pwd','UsersController@chkUserPassword');

Route::post('/update-user-pwd','UsersController@updatePassword');

Route::match(['get','post'],'checkout','ProductsController@checkout');

Route::match(['get','post'],'order-review','ProductsController@orderReview');

Route::match(['get','post'],'place-order','ProductsController@placeOrder');

Route::get('/thanks','ProductsController@thanks');

Route::get('/paypal','ProductsController@paypal');

Route::get('/orders','ProductsController@userOrders');
Route::get('/orders/{id}','ProductsController@userOrderDetails');
});

Route::match(['GET','POST'],'/check-email','UsersController@checkEmail');

Route::group(['middleware' => ['auth']],function(){
Route::get('/admin/dashboard', 'AdminController@dashboard');
Route::get('/admin/settings', 'AdminController@settings');
Route::get('/admin/check-pwd', 'AdminController@chkpassword');
Route::match(['get','post'],'/admin/add-category', 'CategoryController@addCategory');
Route::match(['get','post'],'/admin/edit-category/{id}','CategoryController@editCategory');
Route::match(['get','post'],'/admin/delete-category/{id}','CategoryController@deleteCategory');
Route::get('/admin/view-categories', 'CategoryController@viewCategories');
Route::match(['get','post'],'/admin/add-product', 'ProductsController@addProduct');
Route::match(['get','post'],'/admin/edit-product/{id}', 'ProductsController@editProduct');
Route::get('/admin/view-products','ProductsController@viewProducts');
Route::get('/admin/delete-product/{id}', 'ProductsController@deleteProduct');
Route::get('/admin/delete-product-image/{id}','ProductsController@deleteProductImage');
Route::get('/admin/delete-alt-image/{id}','ProductsController@deleteAltImage');

Route::match(['get','post'],'/admin/add-attributes/{id}', 'ProductsController@addAttributes');
Route::match(['get','post'],'/admin/edit-attributes/{id}', 'ProductsController@editAttributes');
Route::match(['get','post'],'/admin/add-images/{id}', 'ProductsController@addImages');
Route::get('/admin/delete-attribute/{id}', 'ProductsController@deleteAttribute');


Route::match(['get','post'],'/admin/add-coupon','CouponsController@addCoupon');
Route::get('/admin/view-coupons', 'CouponsController@viewCoupons');
Route::match(['get','post'],'/admin/edit-coupon/{id}','CouponsController@editCoupon');
Route::get('/admin/delete-coupon/{id}','CouponsController@deleteCoupon');

Route::get('/admin/view-orders', 'ProductsController@viewOrders');

Route::get('/admin/view-order/{id}', 'ProductsController@viewOrderDetails');
});

Route::get('/logout', 'AdminController@logout');