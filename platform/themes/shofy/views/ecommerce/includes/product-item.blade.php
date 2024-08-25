@php
    $style = theme_option('ecommerce_product_item_style', 1);
    $style = in_array($style, [1, 2, 3, 4, 5]) ? $style : 1;

    $layout ??= 'grid';

    Theme::asset()->container('footer')->writeContent('quick-view-modal', view(Theme::getThemeNamespace('views.ecommerce.includes.quick-view-modal')));
    Theme::asset()->container('footer')->writeContent('quick-shop-modal', view(EcommerceHelper::viewPath('includes.quick-shop-modal')));
    Theme::asset()->add('lightgallery-css', 'vendor/core/plugins/ecommerce/libraries/lightgallery/css/lightgallery.min.css');
    Theme::asset()->container('footer')->add('lightgallery-js', 'vendor/core/plugins/ecommerce/libraries/lightgallery/js/lightgallery.min.js', ['jquery']);
@endphp

@include(Theme::getThemeNamespace("views.ecommerce.includes.product.style-$style.$layout"))
