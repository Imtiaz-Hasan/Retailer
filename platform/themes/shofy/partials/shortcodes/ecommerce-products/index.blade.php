@php
    $style = in_array($shortcode->style, ['grid', 'slider', 'simple']) ? $shortcode->style : 'grid';
@endphp

{!! Theme::partial("shortcodes.ecommerce-products.$style", compact('shortcode', 'products', 'ads', 'categoryIds')) !!}
