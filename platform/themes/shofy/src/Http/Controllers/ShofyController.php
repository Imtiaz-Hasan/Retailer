<?php

namespace Theme\Shofy\Http\Controllers;

use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Concerns\Http\Ajax\HasSearchProducts;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Http\Controllers\PublicController;
use Illuminate\Http\Request;

class ShofyController extends PublicController
{
    use HasSearchProducts;

    public function ajaxGetProducts(Request $request): BaseHttpResponse
    {
        $params = [
            'take' => $limit = $request->integer('limit', 10),
        ];

        $products = match ($request->query('type')) {
            'featured' => get_featured_products($params),
            'on-sale' => get_products_on_sale($params),
            'trending' => get_trending_products($params),
            'top-rated' => get_top_rated_products($limit),
            default => get_products($params + EcommerceHelper::withReviewsParams()),
        };

        return $this
            ->httpResponse()
            ->setData([
                'count' => number_format($products->count()),
                'html' => view(
                    Theme::getThemeNamespace('views.ecommerce.includes.product-items'),
                    ['products' => $products, 'itemsPerRow' => 4, 'layout' => 'grid']
                )->render(),
            ]);
    }

    public function ajaxProductListShortcodeSearch(Request $request): BaseHttpResponse
    {
        return $this
            ->httpResponse();
    }
}
