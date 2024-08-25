<div class="tp-product-sm-item-5 d-flex align-items-center">
    <div class="tp-product-sm-thumb-5 fix">
        <a href="{{ $product->url }}">
            {{ RvMedia::image($product->image, $product->name, 'thumb') }}
        </a>
    </div>
    <div class="tp-product-sm-content-5">
        @if (is_plugin_active('marketplace') && $product->store->getKey())
            <div class="tp-product-sm-tag-5">
                <a href="{{ $product->store->url }}">{{ $product->store->name }}</a>
            </div>
        @endif

        <h4 class="tp-product-sm-title-5">
            <a href="{{ $product->url }}">{{ $product->name }}</a>
        </h4>

        <div class="tp-product-sm-rating-5">
            <div class="bb-product-rating" style="--bb-rating-size: 70px">
                <span style="width: {{ $product->reviews_avg * 20 }}%"></span>
            </div>
        </div>

        <div class="tp-product-sm-price-wrapper-5">
            <span class="tp-product-sm-price-5">{{ format_price($product->front_sale_price_with_taxes) }}</span>
            @if($product->isOnSale())
                <span class="tp-product-sm-price-5 old-price">{{ format_price($product->price_with_taxes) }}</span>
            @endif
        </div>
    </div>
</div>
