@if(EcommerceHelper::isReviewEnabled())
    <div class="tp-product-rating d-flex align-items-center mb-1">
        <div class="tp-product-rating-icon">
            <div class="bb-product-rating" style="--bb-rating-size: 70px">
                <span style="width: {{ $product->reviews_avg * 20 }}%"></span>
            </div>
        </div>
        <div class="tp-product-rating-text">
            <a href="{{ $product->url }}#product-review" data-bb-toggle="scroll-to-review">
                <span class="d-none d-sm-block">{{ __('(:count reviews)', ['count' => number_format($product->reviews_count)]) }}</span>
                <span class="d-block d-sm-none">{{ __('(:count)', ['count' => number_format($product->reviews_count)]) }}</span>
            </a>
        </div>
    </div>
@endif
