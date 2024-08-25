<?php

namespace Theme\Shofy\Services;

use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Models\Product;
use Botble\Payment\Enums\PaymentStatusEnum;
use Illuminate\Database\Eloquent\Collection;

class EcommerceService
{
    public function getTopSellingProducts(int $limit = 15): Collection
    {
        return Product::query()
            ->join('ec_order_product', 'ec_products.id', '=', 'ec_order_product.product_id')
            ->join('ec_orders', 'ec_orders.id', '=', 'ec_order_product.order_id')
            ->when(is_plugin_active('payment'), function ($query) {
                $query
                    ->join('payments', 'payments.order_id', '=', 'ec_orders.id')
                    ->where('payments.status', PaymentStatusEnum::COMPLETED);
            })
            ->select([
                'ec_products.*',
                'ec_order_product.qty as qty',
            ])
            ->with(EcommerceHelper::withProductEagerLoadingRelations())
            ->orderByDesc('ec_order_product.qty')
            ->distinct()
            ->limit($limit)
            ->get();
    }

    public function getRecentAddedProducts(int $limit = 15): Collection
    {
        return Product::query()
            ->wherePublished()
            ->where('is_variation', false)
            ->with(EcommerceHelper::withProductEagerLoadingRelations())
            ->withCount('reviews')
            ->withAvg('reviews as reviews_avg', 'star')
            ->orderBy('order')
            ->orderByDesc('created_at')
            ->limit($limit)
            ->get();
    }
}
