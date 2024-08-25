<?php

use Botble\Ads\Forms\AdsForm;
use Botble\Base\Facades\AdminHelper;
use Botble\Base\Forms\FieldOptions\CheckboxFieldOption;
use Botble\Base\Forms\FieldOptions\InputFieldOption;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\ColorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Ecommerce\Facades\Cart;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Media\Facades\RvMedia;
use Botble\Newsletter\Facades\Newsletter;
use Botble\Page\Forms\PageForm;
use Botble\SimpleSlider\Forms\SimpleSliderItemForm;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Illuminate\Support\Facades\Route;

if (! function_exists('is_product_in_wishlist')) {
    function is_product_in_wishlist(int|string $productId): bool
    {
        if (! auth('customer')->check()) {
            return Cart::instance('wishlist')->search(fn ($cartItem) => $cartItem->id == $productId)->isNotEmpty();
        }

        return is_added_to_wishlist($productId);
    }
}

if (! function_exists('is_product_in_compare')) {
    function is_product_in_compare(int|string $productId): bool
    {
        return Cart::instance('compare')->search(fn ($cartItem) => $cartItem->id == $productId)->isNotEmpty();
    }
}

if (! function_exists('products_listing_layout')) {
    function products_listing_layout(string $default = 'left-sidebar'): string
    {
        $layout = theme_option('ecommerce_products_page_layout', $default);

        return in_array($layout, ['left-sidebar', 'right-sidebar', 'no-sidebar']) ? $layout : $default;
    }
}

if (! function_exists('get_products_per_row_by_layout')) {
    function get_products_per_row_by_layout(): int
    {
        return match (products_listing_layout()) {
            'no-sidebar' => 4,
            default => 3,
        };
    }
}

if (! function_exists('get_product_layout')) {
    function get_product_layout(string $default = 'grid', bool $force = false): string
    {
        if ($force) {
            return $default;
        }

        $layout = request()->query('layout', theme_option('ecommerce_product_item_layout', $default));

        return in_array($layout, ['grid', 'list']) ? $layout : $default;
    }
}

register_page_template([
    'default' => __('Default'),
    'full-width' => __('Full width'),
]);

register_sidebar([
    'id' => 'blog_sidebar',
    'name' => __('Blog sidebar'),
    'description' => __('Customize the blog page with this sidebar widget.'),
]);

register_sidebar([
    'id' => 'footer_primary_sidebar',
    'name' => __('Footer Primary sidebar'),
    'description' => __('Customize the footer content with this sidebar widget.'),
]);

register_sidebar([
    'id' => 'footer_top_sidebar',
    'name' => __('Footer Top sidebar'),
    'description' => __('Engage visitors before they reach the footer with this widget.'),
]);

register_sidebar([
    'id' => 'footer_bottom_sidebar',
    'name' => __('Footer Bottom sidebar'),
    'description' => __("Display copyright text and partner images in the lower section of your website's footer."),
]);

register_sidebar([
    'id' => 'product_details_sidebar',
    'name' => __('Product details sidebar'),
    'description' => __('Customize the product details page with this sidebar widget.'),
]);

app()->booted(function () {
    ThemeSupport::registerSiteCopyright();
    ThemeSupport::registerPreloader();
    ThemeSupport::registerToastNotification();
    ThemeSupport::registerSocialLinks();
    ThemeSupport::registerLazyLoadImages();

    if (is_plugin_active('newsletter')) {
        Newsletter::registerNewsletterPopup();
    }

    remove_sidebar('primary_sidebar');

    RvMedia::addSize('medium', 600, 600);

    add_filter('theme_preloader_versions', fn (array $versions) => [
        ...$versions,
        'v2' => __('Theme built-in'),
    ]);

    add_filter('theme_preloader', function (string $preloader) {
        if (theme_option('preloader_version', 'v1') === 'v2') {
            $preloader = Theme::partial('preloader');
        }

        return $preloader;
    });

    add_filter(THEME_FRONT_BODY, function (string|null $html) {
        if (theme_option('back_to_top_button_enabled', true)) {
            $html .= Theme::partial('back-to-top');
        }

        $html .= Theme::partial('mobile-offcanvas');
        $html .= '<div class="body-overlay"></div>';
        $html .= Theme::partial('navigation-bar');

        if (is_plugin_active('ecommerce') || is_plugin_active('blog')) {
            $html .= Theme::partial('header.search-bar');
        }

        if (is_plugin_active('ecommerce') && EcommerceHelper::isCartEnabled()) {
            $html .= '<div class="cartmini__area">' .
                Theme::partial('cart-mini') .
            '</div>';
        }

        $html .= Theme::partial('header');

        return $html;
    }, 999);

    add_filter(THEME_FRONT_FOOTER, function (string|null $html) {
        return AdminHelper::isInAdmin() ? $html : $html . Theme::partial('footer');
    }, 999);

    PageForm::extend(function (PageForm $form) {
        $form
            ->add(
                'breadcrumb_style',
                SelectField::class,
                SelectFieldOption::make()
                    ->label(__('Breadcrumb style'))
                    ->choices([
                        'align-start' => __('Align start'),
                        'align-center' => __('Align center'),
                        'without-title' => __('Without title'),
                        'none' => __('None'),
                    ])
                    ->metadata()
                    ->toArray()
            )
            ->add(
                'breadcrumb_background',
                MediaImageField::class,
                MediaImageFieldOption::make()
                    ->label(__('Breadcrumb background'))
                    ->metadata()
                    ->toArray()
            );
    });

    if (is_plugin_active('ecommerce')) {
        add_filter(
            'theme_ecommerce_products_filter_before',
            fn (string $data) => $data . view(Theme::getThemeNamespace('views.ecommerce.includes.filters.search'))->render(),
            1
        );

        add_filter('ecommerce_cart_data_for_response', function (array $data, array $cartData) {
            [$products, $promotionDiscountAmount, $couponDiscountAmount] = $cartData;

            return [
                ...$data,
                'cart_mini' => Theme::partial('cart-mini'),
                'cart_content' => Route::is('public.cart.*') ? view(
                    Theme::getThemeNamespace('views.ecommerce.cart'),
                    compact('products', 'promotionDiscountAmount', 'couponDiscountAmount')
                )->render() : null,
            ];
        }, 1, 2);
    }

    if (is_plugin_active('ads')) {
        AdsForm::extend(function (AdsForm $form) {
            $form
                ->addAfter(
                    'name',
                    'title',
                    TextareaField::class,
                    TextareaFieldOption::make()->label(__('Title'))->metadata()->toArray()
                )
                ->addAfter(
                    'title',
                    'subtitle',
                    TextareaField::class,
                    TextareaFieldOption::make()->label(__('Subtitle'))->metadata()->toArray()
                )
                ->addAfter(
                    'subtitle',
                    'button_label',
                    TextField::class,
                    TextFieldOption::make()->label(__('Button label'))->metadata()->toArray()
                );
        });
    }

    if (is_plugin_active('simple-slider')) {
        SimpleSliderItemForm::extend(function (SimpleSliderItemForm $form) {
            $form
                ->addAfter(
                    'title',
                    'subtitle',
                    TextField::class,
                    TextFieldOption::make()->label(__('Subtitle'))->metadata()->toArray()
                )
                ->addAfter(
                    'link',
                    'button_label',
                    TextField::class,
                    TextFieldOption::make()->label(__('Button label'))->helperText(__('Leave empty to hide button'))->metadata()->toArray()
                )
                ->addAfter(
                    'image',
                    'background_color',
                    ColorField::class,
                    InputFieldOption::make()->label(__('Background color'))->metadata()->toArray()
                )
                ->addAfter(
                    'background_color',
                    'is_light',
                    OnOffCheckboxField::class,
                    CheckboxFieldOption::make()->label(__('Background color is light?'))->metadata()->toArray()
                );
        });
    }
});
