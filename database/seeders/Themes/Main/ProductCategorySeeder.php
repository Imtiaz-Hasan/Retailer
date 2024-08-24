<?php

namespace Database\Seeders\Themes\Main;

use Botble\Ecommerce\Database\Seeders\Traits\HasProductCategorySeeder;
use Botble\Ecommerce\Models\ProductCategory;
use Botble\Theme\Database\Seeders\ThemeSeeder;

class ProductCategorySeeder extends ThemeSeeder
{
    use HasProductCategorySeeder;

    public function run(): void
    {
        $this->uploadFiles('product-categories');

        ProductCategory::query()->truncate();

        foreach ($this->getData() as $index => $item) {
            $this->createCategoryItem($index, $item);
        }
    }

    protected function getData(): array
    {
        return [
            [
                'name' => 'New Arrivals',
                'icon' => 'fa-regular fa-home',
            ],
            [
                'name' => 'Electronics',
                'icon' => 'fa-regular fa-tv',
                'children' => [
                    [
                        'name' => 'Featured',
                        'image' => $this->filePath('product-categories/menu-1.jpg'),
                        'children' => [
                            ['name' => 'New Arrivals'],
                            ['name' => 'Best Sellers'],
                            ['name' => 'Mobile Phone', 'image' => $this->filePath('product-categories/2.png'), 'is_featured' => true],
                        ],
                    ],
                    [
                        'name' => 'Computers & Laptops',
                        'image' => $this->filePath('product-categories/menu-2.jpg'),
                        'children' => [
                            ['name' => 'Top Brands'],
                            ['name' => 'Weekly Best Selling'],
                            ['name' => 'CPU Heat Pipes', 'image' => $this->filePath('product-categories/3.png'), 'is_featured' => true],
                            ['name' => 'CPU Coolers', 'image' => $this->filePath('product-categories/category-thumb-9.jpg')],
                        ],
                    ],
                    [
                        'name' => 'Accessories',
                        'image' => $this->filePath('product-categories/menu-3.jpg'),
                        'children' => [
                            ['name' => 'Headphones', 'image' => $this->filePath('product-categories/1.png'), 'is_featured' => true],
                            ['name' => 'Wireless Headphones', 'image' => $this->filePath('product-categories/category-thumb-1.jpg')],
                            ['name' => 'TWS Earphones', 'image' => $this->filePath('product-categories/category-thumb-6.jpg')],
                            ['name' => 'Smart Watch', 'image' => $this->filePath('product-categories/4.png'), 'is_featured' => true],
                        ],
                    ],
                    [
                        'name' => 'Gaming Console',
                        'image' => $this->filePath('product-categories/category-thumb-8.jpg'),
                    ],
                    [
                        'name' => 'Playstation',
                        'image' => $this->filePath('product-categories/category-thumb-12.jpg'),
                    ],
                ],
            ],
            [
                'name' => 'Gifts',
                'icon' => 'fa-regular fa-gift',
            ],
            [
                'name' => 'Computers',
                'icon' => 'fa-regular fa-laptop',
                'children' => [
                    ['name' => 'Desktop', 'icon' => 'fa-regular fa-desktop', 'image' => $this->filePath('product-categories/category-thumb-5.jpg')],
                    ['name' => 'Laptop', 'icon' => 'fa-regular fa-laptop', 'image' => $this->filePath('product-categories/category-thumb-3.jpg')],
                    ['name' => 'Tablet', 'icon' => 'fa-regular fa-tablet-alt', 'image' => $this->filePath('product-categories/category-thumb-4.jpg')],
                    ['name' => 'Accessories', 'icon' => 'fa-regular fa-keyboard'],
                ],
            ],
            [
                'name' => 'Smartphones & Tablets',
                'image' => $this->filePath('product-categories/category-thumb-10.jpg'),
                'icon' => 'fa-regular fa-mobile',
            ],
            [
                'name' => 'TV, Video & Music',
                'icon' => 'fa-regular fa-tv',
            ],
            [
                'name' => 'Cameras',
                'icon' => 'fa-regular fa-camera',
            ],
            [
                'name' => 'Cooking',
                'icon' => 'fa-regular fa-utensils',
            ],
            [
                'name' => 'Accessories',
                'icon' => 'fa-regular fa-store',
                'children' => [
                    ['name' => 'With Bluetooth', 'image' => $this->filePath('product-categories/5.png'), 'is_featured' => true],
                ],
            ],
            [
                'name' => 'Sports',
                'icon' => 'fa-regular fa-football-ball',
            ],
            [
                'name' => 'Electronics Gadgets',
                'icon' => 'fa-regular fa-microchip',
                'children' => [
                    ['name' => 'Micrscope'],
                    ['name' => 'Remote Control'],
                    ['name' => 'Monitor'],
                    ['name' => 'Thermometer'],
                    ['name' => 'Backpack'],
                    ['name' => 'Headphones', 'image' => $this->filePath('product-categories/category-thumb-1.jpg')],
                ],
            ],
        ];
    }
}
