<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Ecommerce\Http\Controllers'], function () {
    AdminHelper::registerRoutes(function () {
        Route::group(['prefix' => 'discounts', 'as' => 'discounts.'], function () {
            Route::resource('', 'DiscountController')->parameters(['' => 'discount']);

            Route::post('generate-coupon', [
                'as' => 'generate-coupon',
                'uses' => 'DiscountController@postGenerateCoupon',
                'permission' => 'discounts.create',
            ]);
        });
    });
});

Route::group(['namespace' => 'Botble\Ecommerce\Http\Controllers\Fronts'], function () {
    Theme::registerRoutes(function () {
        Route::group(['prefix' => 'coupon', 'as' => 'public.coupon.'], function () {
            Route::post('apply', [
                'as' => 'apply',
                'uses' => 'PublicCheckoutController@postApplyCoupon',
            ]);

            Route::post('remove', [
                'as' => 'remove',
                'uses' => 'PublicCheckoutController@postRemoveCoupon',
            ]);
        });
    });
});
