<?php

use Botble\Theme\Events\RenderingThemeOptionSettings;
use Botble\Theme\Facades\ThemeOption;

app('events')->listen(RenderingThemeOptionSettings::class, function () {
    $productItemStyles = [];
    $headerStyles = [];

    foreach (range(1, 5) as $i) {
        $productItemStyles[$i] = [
            'label' => __('Style :number', ['number' => $i]),
            'image' => asset(sprintf('themes/shofy/images/product-item-styles/product-item-%s.png', $i)),
        ];
    }

    foreach (range(1, 5) as $i) {
        $headerStyles[$i] = [
            'label' => __('Header :number', ['number' => $i]),
            'image' => asset(sprintf('themes/shofy/images/header-styles/header-%s.png', $i)),
        ];
    }

    ThemeOption::setField([
        'id' => 'site_title',
        'section_id' => 'opt-text-subsection-general',
        'type' => 'text',
        'label' => __('Site name'),
        'attributes' => [
            'name' => 'site_title',
            'value' => 'Shofy',
            'options' => [
                'class' => 'form-control',
                'data-counter' => 250,
            ],
        ],
    ])
        ->setField([
            'id' => 'sticky_header_enabled',
            'section_id' => 'opt-text-subsection-styles',
            'type' => 'onOff',
            'label' => __('Enable sticky header'),
            'attributes' => [
                'name' => 'sticky_header_enabled',
                'value' => true,
            ],
        ])
        ->setField([
            'id' => 'sticky_header_mobile_enabled',
            'section_id' => 'opt-text-subsection-styles',
            'type' => 'onOff',
            'label' => __('Enable sticky header on mobile'),
            'attributes' => [
                'name' => 'sticky_header_mobile_enabled',
                'value' => true,
            ],
        ])
        ->setField([
            'id' => 'section_title_shape_decorated',
            'section_id' => 'opt-text-subsection-styles',
            'type' => 'onOff',
            'label' => __('Enable section title shape decorated'),
            'attributes' => [
                'name' => 'section_title_shape_decorated',
                'value' => true,
            ],
        ])
        ->setField([
            'id' => 'back_to_top_button_enabled',
            'section_id' => 'opt-text-subsection-styles',
            'type' => 'onOff',
            'label' => __('Enable back to top button'),
            'attributes' => [
                'name' => 'back_to_top_button_enabled',
                'value' => true,
            ],
        ])
        ->setField([
            'id' => 'logo_light',
            'section_id' => 'opt-text-subsection-logo',
            'type' => 'mediaImage',
            'label' => __('Logo light'),
            'attributes' => [
                'name' => 'logo_light',
            ],
        ])
        ->setField([
            'id' => 'logo_height',
            'section_id' => 'opt-text-subsection-logo',
            'type' => 'number',
            'label' => __('Logo height (px)'),
            'attributes' => [
                'name' => 'logo_height',
                'value' => 35,
                'options' => [
                    'class' => 'form-control',
                    'min' => 0,
                    'max' => 150,
                ],
            ],
            'helper' => __('Set the height of the logo in pixels. The default value is 35px.'),
        ])
        ->setField([
            'id' => '404_page_image',
            'section_id' => 'opt-text-subsection-page',
            'type' => 'mediaImage',
            'label' => __('404 page image'),
            'attributes' => [
                'name' => '404_page_image',
                'value' => '',
            ],
        ])
        ->setField([
            'id' => 'blog_posts_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type' => 'customSelect',
            'label' => __('Default blog posts layout'),
            'attributes' => [
                'name' => 'blog_posts_layout',
                'choices' => [
                    'list' => __('List'),
                    'grid' => __('Grid'),
                ],
                'value' => 'grid',
            ],
        ])
        ->setField([
            'id' => 'ecommerce_products_page_layout',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Products listing page layout'),
            'attributes' => [
                'name' => 'ecommerce_products_page_layout',
                'list' => [
                    'left-sidebar' => __('Left sidebar'),
                    'right-sidebar' => __('Right sidebar'),
                    'no-sidebar' => __('No sidebar'),
                ],
            ],
        ])
        ->setField([
            'id' => 'ecommerce_product_item_layout',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Product item layout'),
            'attributes' => [
                'name' => 'ecommerce_product_item_layout',
                'list' => [
                    'grid' => __('Grid'),
                    'list' => __('List'),
                ],
            ],
        ])
        ->setField([
            'id' => 'ecommerce_product_item_style',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'uiSelector',
            'label' => __('Product item style'),
            'attributes' => [
                'name' => 'ecommerce_product_item_style',
                'value' => 1,
                'choices' => $productItemStyles,
            ],
        ])
        ->setField([
            'id' => 'ecommerce_product_gallery_image_style',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Product gallery image style'),
            'attributes' => [
                'name' => 'ecommerce_product_gallery_image_style',
                'list' => [
                    'vertical' => __('Vertical'),
                    'horizontal' => __('Horizontal'),
                ],
                'value' => 'vertical',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'ecommerce_products_per_row_mobile',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type' => 'customSelect',
            'label' => __('Number of products per row on mobile'),
            'attributes' => [
                'name' => 'ecommerce_products_per_row_mobile',
                'list' => [
                    1 => 1,
                    2 => 2,
                ],
                'value' => 2,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id' => 'lazy_load_image',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'onOff',
            'label' => __('Lazy load image'),
            'attributes' => [
                'name' => 'lazy_load_image',
                'value' => true,
            ],
            'helper' => 'Enable lazy load image for better performance.',
        ])
        ->setField([
            'id' => 'placeholder_image',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'mediaImage',
            'label' => __('Placeholder image'),
            'attributes' => [
                'name' => 'placeholder_image',
                'value' => null,
            ],
            'helper' => __('This image will be used as a placeholder for lazy loading images.'),
        ])
        ->setSection([
            'title' => __('Styles'),
            'id' => 'opt-text-subsection-styles',
            'subsection' => true,
            'icon' => 'ti ti-palette',
            'fields' => [
                [
                    'id' => 'primary_color',
                    'section_id' => 'opt-text-subsection-general',
                    'type' => 'customColor',
                    'label' => __('Primary color'),
                    'attributes' => [
                        'name' => 'primary_color',
                        'value' => '#0989ff',
                    ],
                ],
                [
                    'id' => 'primary_font',
                    'section_id' => 'opt-text-subsection-general',
                    'type' => 'googleFonts',
                    'label' => __('Primary font'),
                    'attributes' => [
                        'name' => 'primary_font',
                        'value' => 'Roboto',
                    ],
                ],
                [
                    'id' => 'header_style',
                    'type' => 'uiSelector',
                    'label' => __('Header style'),
                    'attributes' => [
                        'name' => 'header_style',
                        'value' => 1,
                        'choices' => $headerStyles,
                    ],
                ],
                [
                    'id' => 'breadcrumb_style',
                    'type' => 'customSelect',
                    'label' => __('Breadcrumb style'),
                    'attributes' => [
                        'name' => 'breadcrumb_style',
                        'list' => [
                            'none' => __('None'),
                            'align-start' => __('Align start'),
                            'align-center' => __('Align center'),
                            'without-title' => __('Without title'),
                        ],
                        'value' => 'align-start',
                    ],
                ],
                [
                    'id' => 'breadcrumb_background_color',
                    'type' => 'customColor',
                    'label' => __('Breadcrumb background color'),
                    'attributes' => [
                        'name' => 'breadcrumb_background_color',
                        'value' => 'rgba(245, 245, 245, 0)',
                    ],
                ],
                [
                    'id' => 'breadcrumb_background_image',
                    'type' => 'mediaImage',
                    'label' => __('Breadcrumb background image'),
                    'attributes' => [
                        'name' => 'breadcrumb_background_image',
                    ],
                    'helper' => __('If you select an image, the background color will be ignored.'),
                ],
                [
                    'id' => 'breadcrumb_height',
                    'type' => 'number',
                    'label' => __('Breadcrumb height (px)'),
                    'attributes' => [
                        'name' => 'breadcrumb_height',
                        'value' => null,
                        'options' => [
                            'class' => 'form-control',
                        ],
                    ],
                    'helper' => __('Leave empty to use default height.'),
                ],
            ],
        ])
        ->setSection([
            'title' => __('Newsletter Popup'),
            'id' => 'opt-text-subsection-newsletter-popup',
            'subsection' => true,
            'icon' => 'ti ti-mail-opened',
            'fields' => [
                [
                    'id' => 'newsletter_popup_enable',
                    'type' => 'onOff',
                    'label' => __('Enable Newsletter Popup'),
                    'attributes' => [
                        'name' => 'newsletter_popup_enable',
                        'value' => false,
                    ],
                ],
                [
                    'id' => 'newsletter_popup_image',
                    'type' => 'mediaImage',
                    'label' => __('Popup image'),
                    'attributes' => [
                        'name' => 'newsletter_popup_image',
                    ],
                ],
                [
                    'id' => 'newsletter_popup_title',
                    'type' => 'text',
                    'label' => __('Popup title'),
                    'attributes' => [
                        'name' => 'newsletter_popup_title',
                        'value' => null,
                        'options' => [
                            'class' => 'form-control',
                        ],
                    ],
                ],
                [
                    'id' => 'newsletter_popup_subtitle',
                    'type' => 'text',
                    'label' => __('Popup subtitle'),
                    'attributes' => [
                        'name' => 'newsletter_popup_subtitle',
                        'value' => null,
                        'options' => [
                            'class' => 'form-control',
                        ],
                    ],
                ],
                [
                    'id' => 'newsletter_popup_description',
                    'type' => 'textarea',
                    'label' => __('Popup description'),
                    'attributes' => [
                        'name' => 'newsletter_popup_description',
                        'value' => null,
                        'options' => [
                            'class' => 'form-control',
                            'rows' => 2,
                        ],
                    ],
                ],
                [
                    'id' => 'newsletter_popup_delay',
                    'type' => 'number',
                    'label' => __('Popup delay (seconds)'),
                    'attributes' => [
                        'name' => 'newsletter_popup_delay',
                        'value' => 5,
                        'options' => [
                            'class' => 'form-control',
                            'min' => 0,
                        ],
                    ],
                    'helper' => 'Set the delay time to show the popup after the page is loaded. Set 0 to show the popup immediately.',
                ],
            ],
        ]);
});
