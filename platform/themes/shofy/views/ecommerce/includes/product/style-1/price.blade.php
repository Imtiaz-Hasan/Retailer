<div class="tp-product-price-wrapper">
    <span class="tp-product-price new-price">{{ format_price($product->front_sale_price_with_taxes) }}</span>
    @if($product->isOnSale())
        <span class="tp-product-price old-price">{{ format_price($product->price_with_taxes) }}</span>
    @endif
</div>
