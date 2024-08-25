<section class="tp-product-area position-relative pb-70">
    <div class="container">
        @php
            $title = $shortcode->title;
            $subtitle = $shortcode->subtitle;
        @endphp
        <div class="row align-items-end">
            <div class="col-xl-6 col-lg-5">
                @if($title || $subtitle)
                    <div class="tp-section-title-wrapper-5 mb-45 text-center text-lg-start">
                        <span class="tp-section-title-pre-5">
                            {!! BaseHelper::clean($subtitle) !!}
                            {!! Theme::partial('section-title-shape', ['style' => 3]) !!}
                        </span>
                        <h3 class="tp-section-title-5">
                            {!! BaseHelper::clean($title) !!}
                        </h3>
                    </div>
                @endif
            </div>
            <div class="col-xl-6 col-lg-7">
                <div class="tp-product-tab-2 tp-product-tab-5 tp-tab mb-55">
                    <div class="tp-product-tab-inner-3 d-flex align-items-center justify-content-center justify-content-lg-end">
                        <nav>
                            <div
                                class="nav nav-tabs justify-content-center tp-product-tab tp-tab-menu p-relative"
                                id="productTab"
                                data-ajax-url="{{ route('public.ajax.products', ['limit' => $shortcode->limit ?: 8]) }}"
                                role="tablist"
                            >
                                @foreach($productTabs as $key => $tab)
                                    @continue(! in_array($key, $selectedTabs) || (! EcommerceHelper::isReviewEnabled() && $key === 'top-rated'))

                                    <button
                                        @class(['nav-link', 'active' => $loop->first])
                                        id="{{ $key }}-tab"
                                        data-bs-toggle="tab"
                                        data-bs-target="#{{ $key }}-tab-pane"
                                        type="button"
                                        role="tab"
                                        aria-controls="{{ $key }}-tab-pane"
                                        @if ($loop->first) aria-selected="true" @endif
                                        data-bb-toggle="product-tab"
                                        data-bb-value="{{ $key }}"
                                    >
                                        {{ $tab }}

                                        <span class="tp-product-tab-tooltip">0</span>
                                    </button>
                                @endforeach

                                <span id="productTabMarker" class="tp-tab-line d-none d-sm-inline-block"></span>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="tab-content" id="productTabContent">
                    <div class="tab-pane fade show active" id="tab-pane" role="tabpanel" aria-labelledby="tab" tabindex="0"></div>
                </div>
            </div>
        </div>
    </div>
</section>
