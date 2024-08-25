<div class="tp-product-price-wrapper-3">
    <span class="tp-product-price-3 new-price">{{ format_price($product->front_sale_price_with_taxes) }}</span>
    @if($product->isOnSale())
        <span class="tp-product-price-3 old-price">{{ format_price($product->price_with_taxes) }}</span>
    @endif
</div>
