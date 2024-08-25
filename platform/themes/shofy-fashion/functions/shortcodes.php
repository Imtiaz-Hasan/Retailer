<?php

use Botble\Ads\Facades\AdsManager;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\UiSelectorField;
use Botble\Base\Forms\FormCollapse;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;
use Illuminate\Support\Arr;

app()->booted(function () {
    if (is_plugin_active('simple-slider')) {
        Shortcode::modifyAdminConfig('simple-slider', function (ShortcodeForm $form) {
            return $form
                ->add(
                    'shape_1',
                    MediaImageField::class,
                    MediaImageFieldOption::make()->label(__('Shape :number', ['number' => 1]))->toArray()
                )
                ->add(
                    'shape_2',
                    MediaImageField::class,
                    MediaImageFieldOption::make()->label(__('Shape :number', ['number' => 2]))->toArray()
                )
                ->add(
                    'shape_3',
                    MediaImageField::class,
                    MediaImageFieldOption::make()->label(__('Shape :number', ['number' => 3]))->toArray()
                );
        });
    }

    if (is_plugin_active('ecommerce')) {
        Shortcode::modifyAdminConfig('product-categories', function (ShortcodeForm $form) {
            return $form
                ->addAfter(
                    'style',
                    'title',
                    TextField::class,
                    TextFieldOption::make()->label(__('Title'))->toArray()
                )
                ->addAfter(
                    'title',
                    'description',
                    TextareaField::class,
                    TextareaFieldOption::make()->label(__('Description'))->rows(2)->toArray()
                );
        });

        Shortcode::modifyAdminConfig('ecommerce-products', function (ShortcodeForm $form) {
            return $form
                ->remove('style')
                ->addCollapsible(
                    FormCollapse::make('ads')
                        ->targetField(
                            'style',
                            UiSelectorField::class,
                            SelectFieldOption::make()
                                ->choices([
                                    'grid' => [
                                        'label' => __('Grid'),
                                        'image' => asset('themes/shofy/images/shortcodes/ecommerce-products/grid.png'),
                                    ],
                                    'slider' => [
                                        'label' => __('Slider'),
                                        'image' => asset('themes/shofy/images/shortcodes/ecommerce-products/slider.png'),
                                    ],
                                    'slider-full-width' => [
                                        'label' => __('Slider full width'),
                                        'image' => Theme::asset()->url('images/shortcodes/ecommerce-products/slider-full-width.png'),
                                    ],
                                    'slider-with-ads-sidebar' => [
                                        'label' => __('Slider with ads sidebar'),
                                        'image' => Theme::asset()->url('images/shortcodes/ecommerce-products/slider-with-ads-sidebar.png'),
                                    ],
                                ])
                                ->selected(Arr::get($form->getModel(), 'style', 'grid'))
                                ->toArray()
                        )
                        ->isOpened(Arr::get($form->getModel(), 'style', 'slider-full-width') === 'slider-with-ads-sidebar')
                        ->targetValue('slider-with-ads-sidebar')
                        ->fieldset(function (ShortcodeForm $form) {
                            if (is_plugin_active('ads')) {
                                return $form->add(
                                    'ads',
                                    SelectField::class,
                                    SelectFieldOption::make()
                                        ->label(__('Ads'))
                                        ->choices(
                                            AdsManager::getData(true, true)
                                                ->pluck('name', 'key')
                                                ->merge(['' => __('-- Select --')])
                                                ->sortKeys()
                                                ->all()
                                        )
                                        ->helperText(__('Select ads to show in this slider.'))
                                        ->toArray()
                                );
                            }

                            return $form;
                        })
                )
                ->addAfter(
                    'title',
                    'subtitle',
                    TextField::class,
                    TextFieldOption::make()->label(__('Subtitle'))->toArray()
                )
                ->add(
                    'button_label',
                    TextField::class,
                    TextFieldOption::make()->label(__('Button label'))->toArray()
                )
                ->add(
                    'button_url',
                    TextField::class,
                    TextFieldOption::make()->label(__('Button URL'))->toArray()
                );
        });

        Shortcode::modifyAdminConfig('ecommerce-product-groups', function (ShortcodeForm $form) {
            return $form->addAfter(
                'title',
                'subtitle',
                TextField::class,
                TextFieldOption::make()->label(__('Subtitle'))->toArray()
            );
        });
    }

    if (is_plugin_active('blog')) {
        Shortcode::modifyAdminConfig('blog-posts', function (ShortcodeForm $form) {
            return $form->addAfter(
                'title',
                'subtitle',
                TextField::class,
                TextFieldOption::make()->label(__('Subtitle'))->colspan(2)->toArray()
            );
        });
    }
});
