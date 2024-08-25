<div class="cartmini__wrapper d-flex justify-content-between flex-column">
    <div class="cartmini__top-wrapper">
        <div class="cartmini__top p-relative">
            <div class="cartmini__top-title">
                <h4>{{ __('Shopping cart') }}</h4>
            </div>
            <div class="cartmini__close">
                <button type="button" class="cartmini__close-btn cartmini-close-btn">
                    <i class="fal fa-times"></i>
                </button>
            </div>
        </div>
        @if (Cart::instance('cart')->isNotEmpty() && ($products = Cart::instance('cart')->products()) && $products->isNotEmpty())
            <div class="cartmini__widget">
                @foreach (Cart::instance('cart')->content() as $key => $cartItem)
                    @if ($product = $products->find($cartItem->id))
                        <div class="cartmini__widget-item">
                            <div class="cartmini__thumb">
                                <a href="{{ $product->original_product->url }}">
                                    {{ RvMedia::image(Arr::get($cartItem->options, 'image', $product->original_product->image), $product->original_product->name, 'thumb', useDefaultImage: RvMedia::getDefaultImage()) }}
                                </a>
                            </div>
                            <div class="cartmini__content">
                                <h5 class="cartmini__title">
                                    <a href="{{ $product->original_product->url }}">{{ $product->original_product->name }}</a>
                                </h5>
                                <div class="cartmini__price-wrapper">
                                            <span class="cartmini__price">
                                                {{ format_price($cartItem->price) }}
                                                @if ($product->front_sale_price != $product->price)
                                                    <del class="small text-secondary">{{ format_price($product->price) }}</del>
                                                @endif
                                            </span>
                                    <span class="cartmini__quantity">{{ __('x:quantity', ['quantity' => $cartItem->qty]) }}</span>
                                </div>
                                <div class="small">{{ Arr::get($cartItem->options, 'attributes', '') }}</div>
                                @if (EcommerceHelper::isEnabledProductOptions() && !empty($cartItem->options['options']))
                                    {!! render_product_options_html($cartItem->options['options'], $product->original_price) !!}
                                @endif
                                @include('plugins/ecommerce::themes.includes.cart-item-options-extras', [
                                    'options' => $cartItem->options,
                                ])
                            </div>
                            <a
                                href="{{ route('public.cart.remove', $cartItem->rowId) }}"
                                class="cartmini__del"
                                title="{{ __('Remove this item') }}"
                                data-bb-toggle="remove-from-cart"
                            >
                                <i class="fa-regular fa-xmark"></i>
                            </a>
                        </div>
                    @endif
                @endforeach
            </div>
        @else
            <div class="cartmini__empty text-center">
                <img src="{{ asset('themes/shofy/images/empty-cart.png') }}" alt="{{ __('Empty Cart') }}">
                <p>{{ __('Your Cart is empty') }}</p>
                <a href="{{ route('public.products') }}" class="tp-btn">{{ __('Go to Shop') }}</a>
            </div>
        @endif
    </div>

    @if (Cart::instance('cart')->isNotEmpty() && Cart::instance('cart')->products()->count())
        <div class="cartmini__checkout">
            <div class="d-flex flex-column gap-2 cartmini__checkout-title mb-30">
                <div>
                    <h4>{{ __('Subtotal:') }}</h4>
                    <span>{{ format_price(Cart::instance('cart')->rawSubTotal()) }}</span>
                </div>
                @if (EcommerceHelper::isTaxEnabled())
                    <div>
                        <h4>{{ __('Tax:') }}</h4>
                        <span>{{ format_price(Cart::instance('cart')->rawTax()) }}</span>
                    </div>
                    <div>
                        <h4>{{ __('Total:') }}</h4>
                        <span>{{ format_price(Cart::instance('cart')->rawSubTotal() + Cart::instance('cart')->rawTax()) }}</span>
                    </div>
                @endif
            </div>
            <div class="cartmini__checkout-btn">
                <a href="{{ route('public.cart') }}" class="mb-10 tp-btn w-100">
                    {{ __('View Cart') }}
                </a>
                @if (session('tracked_start_checkout'))
                    <a href="{{ route('public.checkout.information', session('tracked_start_checkout')) }}" class="tp-btn tp-btn-border w-100">
                        {{ __('Checkout') }}
                    </a>
                @endif
            </div>
        </div>
    @endif
</div>
