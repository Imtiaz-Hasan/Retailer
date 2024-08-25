<div class="page-content-wrapper">
    <section
        class="content-page single-product-content"
        id="product-detail-page"
    >
        @include('plugins/ecommerce::themes.includes.product-detail')
        <div class="product-tabs-wrapper container">
            <ul
                class="product-content-tabs nav nav-tabs"
                role="tablist"
            >

                <li class="nav-item">
                    <a
                        class="active"
                        data-bs-toggle="tab"
                        href="#tab_description"
                        role="tab"
                    >{{ __('Description') }}</a>
                </li>
                <li class="nav-item">
                    <a
                        class=""
                        data-bs-toggle="tab"
                        href="#tab_additional_information"
                        role="tab"
                    >{{ theme_option('product-bonus-title') }}</a>
                </li>
                @if (EcommerceHelper::isReviewEnabled())
                    <li class="nav-item">
                        <a
                            class=""
                            data-bs-toggle="tab"
                            href="#tab_reviews"
                            role="tab"
                        >{{ __('Reviews') }}
                            (<span> {{ $product->reviews_count }}</span>)</a>
                    </li>
                @endif
                <li class="nav-item">
                    <a
                        class=""
                        data-bs-toggle="tab"
                        href="#tab_more_products"
                        role="tab"
                    >{{ __('Related products') }}</a>
                </li>

            </ul>
            <div class="product-content-tabs-wrapper tab-content container">
                <div
                    class="tab-pane fade in active"
                    id="tab_description"
                    role="tabpanel"
                >
                    <h6
                        class="product-collapse-title"
                        data-bs-toggle="collapse"
                        data-bs-target="#tab_description-coll"
                    >
                        {{ __('Description') }}</h6>
                    <div
                        class="shop_description product-collapse collapse container"
                        id="tab_description-coll"
                    >
                        <div class="row">
                            <div class="col-md-12">
                                <div class="ck-content">
                                    {!! BaseHelper::clean($product->content) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div
                    class="tab-pane fade"
                    id="tab_additional_information"
                    role="tabpanel"
                >
                    <h6
                        class="product-collapse-title"
                        data-bs-toggle="collapse"
                        data-bs-target="#tab_additional_information-coll"
                    >{{ theme_option('product-bonus-title') }}</h6>
                    <div
                        class="container product-collapse collapse"
                        id="tab_additional_information-coll"
                    >

                        {!! theme_option('product-bonus') !!}

                    </div>
                </div>

                @if (EcommerceHelper::isReviewEnabled())
                    <div
                        class="tab-pane fade"
                        id="tab_reviews"
                        role="tabpanel"
                    >
                        <h6
                            class="product-collapse-title"
                            data-bs-toggle="collapse"
                            data-bs-target="#tab_reviews-coll"
                        >{{ __('Reviews') }}
                            ({{ $product->reviews_count }})
                        </h6>
                    </div>
                @endif

                <div
                    class="tab-pane fade"
                    id="tab_more_products"
                    role="tabpanel"
                >
                    @php
                        $crossSaleProducts = get_cross_sale_products($product);
                    @endphp

                    @if ($crossSaleProducts->isNotEmpty())
                        <div class="container">
                            <div class="row">
                                @include('plugins/ecommerce::themes.includes.product-items', ['products' => $crossSaleProducts])
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>

        @php
            $relatedProducts = get_related_products($product);
        @endphp

        @if ($relatedProducts->isNotEmpty())
            <div class="container">
                <h2>{{ __('Related products') }}</h2>

                <div class="row">
                    @include('plugins/ecommerce::themes.includes.product-items', ['products' => $relatedProducts])
                </div>
            </div>
        @endif
    </section>
</div>
