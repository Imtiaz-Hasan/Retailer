<?php

namespace Database\Seeders\Themes\Beauty;

use Database\Seeders\Themes\Main\ThemeOptionSeeder as MainThemeOptionSeeder;

class ThemeOptionSeeder extends MainThemeOptionSeeder
{
    protected function getData(): array
    {
        return [
            ...parent::getData(),
            'primary_color' => '#BD844C',
            'primary_font' => 'Jost',
            'header_style' => 3,
            'ecommerce_product_item_style' => 3,
        ];
    }
}
