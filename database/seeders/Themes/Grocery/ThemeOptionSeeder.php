<?php

namespace Database\Seeders\Themes\Grocery;

use Database\Seeders\Themes\Main\ThemeOptionSeeder as MainThemeOptionSeeder;

class ThemeOptionSeeder extends MainThemeOptionSeeder
{
    protected function getData(): array
    {
        return [
            ...parent::getData(),
            'primary_color' => '#678E61',
            'primary_font' => 'Jost',
            'header_style' => 5,
            'ecommerce_product_item_style' => 5,
        ];
    }
}
