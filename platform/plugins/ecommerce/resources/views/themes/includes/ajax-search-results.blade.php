@if ($products->isNotEmpty())
    <div class="bb-quick-search-content">
        <div class="bb-quick-search-list">
            @foreach ($products as $product)
                <a class="bb-quick-search-item" href="{{ $product->url }}">
                    <div class="bb-quick-search-item-image">
                        {{ RvMedia::image($product->image, $product->name, 'thumb', useDefaultImage: true) }}
                    </div>
                    <div class="bb-quick-search-item-info">
                        <div class="bb-quick-search-item-name">
                            {{ $product->name }}
                        </div>

                        @if (EcommerceHelper::isReviewEnabled())
                            <div class="bb-quick-search-item-rating">
                                <div class="bb-product-rating" style="--bb-rating-size: 70px">
                                    <span style="width: {{ $product->reviews_avg * 20 }}%"></span>
                                </div>
                                <span>({{ $product->reviews_count }})</span>
                            </div>
                        @endif

                        <div class="bb-quick-search-item-price">
                            <span class="new-price">{{ format_price($product->front_sale_price_with_taxes) }}</span>
                            @if ($product->isOnSale())
                                <span class="old-price">{{ format_price($product->price_with_taxes) }}</span>
                            @endif
                        </div>
                    </div>
                </a>
            @endforeach
        </div>

        @if ($products->hasMorePages() && $products->nextPageUrl())
            <div class="bb-quick-search-load-more">
                <a href="{{ $products->nextPageUrl() }}" data-bb-toggle="quick-search-load-more">
                    {{ __('Load more') }}
                </a>
            </div>
        @endif
    </div>

    <div class="bb-quick-search-view-all">
        <a href="{{ route('public.products') }}">{{ __('View all results') }}</a>
    </div>
@else
    <div class="bb-quick-search-empty">
        {{ __('No results found!') }}
    </div>
@endif
