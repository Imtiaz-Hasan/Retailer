<?php

use Botble\Base\Facades\AdminHelper;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function () {
    Route::group(['namespace' => 'Botble\Ecommerce\Http\Controllers'], function () {
        Route::group(['prefix' => 'shipments', 'as' => 'ecommerce.shipments.'], function () {
            Route::resource('', 'ShipmentController')
                ->parameters(['' => 'shipment'])
                ->except(['create', 'store']);

            Route::post('update-status/{shipment}', [
                'as' => 'update-status',
                'uses' => 'ShipmentController@postUpdateStatus',
                'permission' => 'ecommerce.shipments.edit',
            ])->wherePrimaryKey();

            Route::post('update-cod-status/{shipment}', [
                'as' => 'update-cod-status',
                'uses' => 'ShipmentController@postUpdateCodStatus',
                'permission' => 'ecommerce.shipments.edit',
            ])->wherePrimaryKey();
        });
    });
});
