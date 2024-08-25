<?php

use Botble\Theme\Theme;

return [
    'inherit' => 'shofy',

    'events' => [
        'beforeRenderTheme' => function (Theme $theme) {
            $theme->asset()->usePath()->add('shofy-theme', 'css/theme.css');
        },
    ],
];
