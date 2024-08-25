<section class="tp-product-sm-area">
    <div class="container">
        <div class="row g-4">
            @foreach($groups as $group)
                <div class="col-xl-4 col-md-6">
                    <div class="tp-product-sm-list mb-50">
                        <div class="tp-section-title-wrapper mb-40">
                            <h3 class="tp-section-title tp-section-title-sm">
                                {{ $group['title'] }}
                                {!! Theme::partial('section-title-shape', ['style' => 'small']) !!}
                            </h3>
                        </div>

                        <div class="tp-product-sm-wrapper">
                            @foreach($group['products'] as $product)
                                @include(Theme::getThemeNamespace('views.ecommerce.includes.product.style-1.small'))
                            @endforeach
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
