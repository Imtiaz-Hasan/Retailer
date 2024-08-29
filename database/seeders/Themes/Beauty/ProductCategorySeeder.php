<?php

namespace Database\Seeders\Themes\Beauty;

use Database\Seeders\Themes\Main\ProductCategorySeeder as MainProductCategorySeeder;

class ProductCategorySeeder extends MainProductCategorySeeder
{
    protected function getData(): array
    {
        return [
            [
                'name' => 'Discover Skincare',
                'image' => $this->filePath('product-categories/1.jpg'),
            ],
            [
                'name' => 'Clothing',
                'image' => $this->filePath('product-categories/4.jpg'),
                'children' => [
                    [
                        'name' => 'Men\'s Clothing',
                        'children' => [
                            ['name' => 'T-Shirts'],
                            ['name' => 'Jeans'],
                            ['name' => 'Suits'],
                        ],
                    ],
                    [
                        'name' => 'Women\'s Clothing',
                        'image' => $this->filePath('product-categories/2.jpg'),
                        'children' => [
                            ['name' => 'Dresses'],
                            ['name' => 'Blouses'],
                            ['name' => 'Pants'],
                        ],
                    ],
                ],
            ],
            [
                'name' => 'Accessories',
                'children' => [
                    ['name' => 'Hats'],
                    ['name' => 'Scarves'],
                    ['name' => 'Jewelry'],
                ],
            ],
            [
                'name' => 'Sportswear',
                'children' => [
                    ['name' => 'Activewear'],
                    ['name' => 'Running Shoes', 'image' => $this->filePath('product-categories/3.jpg')],
                ],
            ],
        ];
    }
}
