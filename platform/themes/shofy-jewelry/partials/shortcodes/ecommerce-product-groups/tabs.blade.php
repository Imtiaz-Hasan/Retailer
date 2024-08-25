@php
    $title = $shortcode->title;
    $subtitle = $shortcode->subtitle;
@endphp

<section class="tp-product-area pt-30 pb-30">
    <div class="container">
        <div class="row align-items-end">
            <div class="col-xl-6 col-lg-6">
                @if($title || $subtitle)
                    <div class="tp-section-title-wrapper-4 mb-40 text-center text-lg-start">
                        @if($subtitle)
                            <span class="tp-section-title-pre-4">
                                {!! BaseHelper::clean($subtitle) !!}
                            </span>
                        @endif
                        @if($title)
                            <h3 class="tp-section-title-4">
                                {!! BaseHelper::clean($title) !!}
                            </h3>
                        @endif
                    </div>
                @endif
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="tp-product-tab-2 tp-product-tab-3 tp-tab mb-45">
                    <div class="tp-product-tab-inner-3 d-flex align-items-center justify-content-center justify-content-lg-end">
                        <nav>
                            <div
                                class="nav nav-tabs justify-content-center tp-product-tab tp-tab-menu p-relative"
                                id="productTab"
                                role="tablist"
                                data-ajax-url="{{ route('public.ajax.products', ['limit' => $shortcode->limit ?: 8]) }}"
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

                                        <span class="tp-product-tab-tooltip">...</span>
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
