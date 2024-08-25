<div id="tp-bottom-menu-sticky" class="tp-mobile-menu d-lg-none">
    <div class="container">
        <div class="row row-cols-5">
            @if (is_plugin_active('ecommerce'))
                <div class="col">
                    <div class="text-center tp-mobile-item">
                        <a href="{{ route('public.products') }}" class="tp-mobile-item-btn">
                            <i class="fa-light fa-shopping-bag"></i>
                            <span>{{ __('Store') }}</span>
                        </a>
                    </div>
                </div>
            @endif
            <div class="col">
                <div class="text-center tp-mobile-item">
                    <button class="tp-mobile-item-btn tp-search-open-btn">
                        <i class="fa-light fa-search"></i>
                        <span>{{ __('Search') }}</span>
                    </button>
                </div>
            </div>
            @if (is_plugin_active('ecommerce'))
                @if (EcommerceHelper::isWishlistEnabled())
                    <div class="col">
                        <div class="text-center tp-mobile-item">
                            <a href="{{ route('public.wishlist') }}" class="tp-mobile-item-btn">
                                <i class="fa-light fa-heart"></i>
                                <span>{{ __('Wishlist') }}</span>
                            </a>
                        </div>
                    </div>
                @endif
                <div class="col">
                    <div class="text-center tp-mobile-item">
                        <a
                            href="{{ auth('customer')->check() ? route('customer.overview') : route('customer.login') }}"
                            class="tp-mobile-item-btn"
                            @auth('customer')
                                title="{{ auth('customer')->user()->name }}"
                            @endauth
                        >
                            <i class="fa-light fa-user"></i>
                            <span>{{ __('Account') }}</span>
                        </a>
                    </div>
                </div>
            @endif
            <div class="col">
                <div class="text-center tp-mobile-item">
                    <button class="tp-mobile-item-btn tp-offcanvas-open-btn">
                        <i class="fa-light fa-bars"></i>
                        <span>{{ __('Menu') }}</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
