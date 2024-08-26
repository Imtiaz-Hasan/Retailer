<?php

namespace Database\Seeders\Themes\Fashion;

use Database\Seeders\Themes\Main\ThemeOptionSeeder as MainThemeOptionSeeder;

class ThemeOptionSeeder extends MainThemeOptionSeeder
{
    protected function getData(): array
    {
        return [
            ...parent::getData(),
            'primary_color' => '#821F40',
            'primary_font' => 'Jost',
            'header_style' => 2,
            'ecommerce_product_item_style' => 2,
        ];
    }
}
