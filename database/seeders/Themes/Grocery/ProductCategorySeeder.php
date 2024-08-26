<?php

namespace Database\Seeders\Themes\Grocery;

use Database\Seeders\Themes\Main\ProductCategorySeeder as MainProductCategorySeeder;

class ProductCategorySeeder extends MainProductCategorySeeder
{
    protected function getData(): array
    {
        return [
            [
                'name' => 'Frozen Food',
                'image' => $this->filePath('product-categories/1.jpg'),
                'children' => [
                    ['name' => 'Baby Food'],
                    ['name' => 'Strawberry'],
                    ['name' => 'Ice Cream'],
                ],
            ],
            [
                'name' => 'Meat & Seafood',
                'image' => $this->filePath('product-categories/2.jpg'),
                'children' => [
                    ['name' => 'Chicken'],
                    ['name' => 'Fish'],
                    ['name' => 'Beef'],
                ],
            ],
            [
                'name' => 'Milk & Dairy',
                'image' => $this->filePath('product-categories/3.jpg'),
                'children' => [
                    ['name' => 'Milk'],
                    ['name' => 'Cheese'],
                    ['name' => 'Yogurt'],
                ],
            ],
            [
                'name' => 'Beverages',
                'image' => $this->filePath('product-categories/4.jpg'),
            ],
            [
                'name' => 'Vegetables',
                'image' => $this->filePath('product-categories/5.jpg'),
                'children' => [
                    ['name' => 'Carrot'],
                    ['name' => 'Tomato'],
                    ['name' => 'Potato'],
                ],
            ],
            [
                'name' => 'Fruits',
                'image' => $this->filePath('product-categories/6.jpg'),
                'children' => [
                    ['name' => 'Banana'],
                    ['name' => 'Mango'],
                ],
            ],
        ];
    }
}
