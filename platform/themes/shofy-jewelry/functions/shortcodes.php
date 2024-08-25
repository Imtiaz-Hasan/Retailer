<?php

use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\UiSelectorField;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;

app()->booted(function () {
    if (is_plugin_active('ecommerce')) {
        Shortcode::modifyAdminConfig('ecommerce-product-groups', function (ShortcodeForm $form) {
            return $form->addAfter(
                'title',
                'subtitle',
                TextField::class,
                TextFieldOption::make()->label(__('Subtitle'))->toArray()
            );
        });

        Shortcode::modifyAdminConfig('ecommerce-products', function (ShortcodeForm $form) {
            return $form
                ->addAfter(
                    'title',
                    'subtitle',
                    TextField::class,
                    TextFieldOption::make()
                        ->label(__('Subtitle'))
                        ->toArray()
                )
                ->modify(
                    'style',
                    UiSelectorField::class,
                    [
                        'choices' => [
                            'slider-full-width' => [
                                'label' => __('Slider full width'),
                                'image' => Theme::asset()->url('images/shortcodes/ecommerce-products/slider-full-width.png'),
                            ],
                        ],
                    ],
                );
        });
    }
});
