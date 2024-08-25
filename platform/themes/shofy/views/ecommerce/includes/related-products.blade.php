@if ($products->isNotEmpty())
    <section class="tp-related-product">
        <div class="container">
            <div class="row">
                <div class="tp-section-title-wrapper-6 text-center">
                    <h3 class="tp-section-title-6">{{ __('Related Products') }}</h3>
                </div>
            </div>
            <div class="row">
                <div class="tp-product-related-slider">
                    <div class="tp-product-related-slider-active swiper-container mb-10">
                        <div class="swiper-wrapper">
                            @foreach ($products as $product)
                                <div class="swiper-slide">
                                    @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'))
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="tp-related-swiper-scrollbar tp-swiper-scrollbar"></div>
                </div>
            </div>
        </div>
    </section>
@endif
