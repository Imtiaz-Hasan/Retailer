<?php

namespace Database\Seeders\Themes\Fashion;

use Database\Seeders\Themes\Main\ProductCategorySeeder as MainProductCategorySeeder;

class ProductCategorySeeder extends MainProductCategorySeeder
{
    protected function getData(): array
    {
        return [
            [
                'name' => 'Bags',
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
            ['name' => 'Footwear', 'image' => $this->filePath('product-categories/6.jpg')],
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
            ['name' => 'Outerwear', 'image' => $this->filePath('product-categories/5.jpg')],
        ];
    }
}
