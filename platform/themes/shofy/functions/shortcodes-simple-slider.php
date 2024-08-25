<?php

use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\UiSelectorFieldOption;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\UiSelectorField;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Arr;

app()->booted(function () {
    if (! is_plugin_active('simple-slider')) {
        return;
    }

    add_filter(SIMPLE_SLIDER_VIEW_TEMPLATE, function () {
        return Theme::getThemeNamespace('partials.shortcodes.simple-slider.index');
    }, 120);

    Shortcode::modifyAdminConfig('simple-slider', function (ShortcodeForm $form) {
        $styles = [];

        foreach (range(1, 5) as $i) {
            $styles[$i] = [
                'label' => __('Style :number', ['number' => $i]),
                'image' => asset(sprintf('themes/shofy/images/shortcodes/simple-slider/style-%s.png', $i)),
            ];
        }

        $form->addBefore(
            'key',
            'style',
            UiSelectorField::class,
            UiSelectorFieldOption::make()
                ->choices($styles)
                ->selected(Arr::get($form->getModel(), 'style', 1))
                ->toArray()
        );

        foreach (range(1, 4) as $i) {
            $form->add(
                "shape_$i",
                MediaImageField::class,
                MediaImageFieldOption::make()->label(__('Shape :number', ['number' => $i]))->toArray()
            );
        }

        return $form;
    });
});
