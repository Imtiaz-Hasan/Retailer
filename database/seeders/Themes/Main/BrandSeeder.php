<?php

namespace Database\Seeders\Themes\Main;

use Botble\Ecommerce\Models\Brand;
use Botble\Slug\Facades\SlugHelper;
use Botble\Theme\Database\Seeders\ThemeSeeder;

class BrandSeeder extends ThemeSeeder
{
    public function run(): void
    {
        $brands = [
            [
                'name' => 'FoodPound',
                'description' => 'New Snacks Release',
            ],
            [
                'name' => 'iTea JSC',
                'description' => 'Happy Tea 100% Organic. From $29.9',
            ],
            [
                'name' => 'Soda Brand',
                'description' => 'Fresh Meat Sausage. BUY 2 GET 1!',
            ],
            [
                'name' => 'Shofy',
                'description' => 'Fresh Meat Sausage. BUY 2 GET 1!',
            ],
            [
                'name' => 'Soda Brand',
                'description' => 'Fresh Meat Sausage. BUY 2 GET 1!',
            ],
        ];

        Brand::query()->truncate();

        foreach ($brands as $key => $item) {
            $item['order'] = $key;
            $item['is_featured'] = true;
            $brand = Brand::query()->create($item);

            SlugHelper::createSlug($brand);
        }
    }
}
