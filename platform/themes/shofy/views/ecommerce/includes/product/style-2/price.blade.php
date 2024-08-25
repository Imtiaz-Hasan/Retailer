<div class="tp-product-price-wrapper-2">
    <span class="tp-product-price-2 new-price">{{ format_price($product->front_sale_price_with_taxes) }}</span>
    @if($product->isOnSale())
        <span class="tp-product-price-2 old-price">{{ format_price($product->price_with_taxes) }}</span>
    @endif
</div>
