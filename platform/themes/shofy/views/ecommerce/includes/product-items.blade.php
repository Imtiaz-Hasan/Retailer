@if($products->isNotEmpty())
    @if (get_product_layout($layout ?? 'grid') === 'grid' || ! Route::is('public.products'))
        @php
            $itemsPerRow ??= get_products_per_row_by_layout();
            $itemsPerRowOnMobile = theme_option('ecommerce_products_per_row_mobile', 2);
        @endphp

        <div class="row row-cols-xxl-{{ $itemsPerRow }} row-cols-sm-{{ $itemsPerRow - 1 }} row-cols-{{ $itemsPerRowOnMobile }}">
            @foreach ($products as $product)
                <div class="col">
                    @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'), ['layout' => 'grid'])
                </div>
            @endforeach
        </div>
    @else
        <div class="row">
            <div class="col-xl-12">
                @foreach ($products as $product)
                    @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'), ['layout' => 'list'])
                @endforeach
            </div>
        </div>
    @endif
@else
    <div class="alert alert-warning rounded-0">
        <div class="d-flex align-items-center gap-2">
            <x-core::icon name="ti ti-info-circle" />
            {{ __('No products were found matching your selection.') }}
        </div>
    </div>
@endif

@if ($products instanceof \Illuminate\Pagination\LengthAwarePaginator && $products->hasPages())
    {{ $products->links(Theme::getThemeNamespace('partials.pagination')) }}
@endif
