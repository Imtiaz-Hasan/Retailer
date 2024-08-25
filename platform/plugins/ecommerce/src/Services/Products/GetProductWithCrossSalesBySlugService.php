<?php

namespace Botble\Ecommerce\Services\Products;

use Botble\Ecommerce\Models\Product;

class GetProductWithCrossSalesBySlugService
{
    public function __construct(protected GetProductBySlugService $getProductBySlugService)
    {
    }

    public function handle(string $slug, array $params = []): Product|null
    {
        return $this->getProductBySlugService->handle($slug, [
            ...$params,
            ...[
                'with' => [
                    'crossSales',
                ],
            ],
        ]);
    }
}
