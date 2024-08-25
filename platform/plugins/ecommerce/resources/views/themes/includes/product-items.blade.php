@foreach ($products as $product)
    @if (view()->exists(Theme::getThemeNamespace('views.ecommerce.includes.product-item')))
        @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'))
    @else
        @include('plugins/ecommerce::themes.includes.product-item')
    @endif
@endforeach
