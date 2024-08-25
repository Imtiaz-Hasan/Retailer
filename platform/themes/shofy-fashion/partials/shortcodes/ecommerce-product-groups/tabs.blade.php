@php
    $title = $shortcode->title;
    $subtitle = $shortcode->subtitle;
@endphp

<section class="tp-product-area position-relative pb-90">
    <div class="container">
        @if($title || $subtitle)
            <div class="row">
                <div class="col-xl-12">
                    <div class="tp-section-title-wrapper-2 text-center mb-35">
                        @if($subtitle)
                            <span class="tp-section-title-pre-2">
                                {!! BaseHelper::clean($subtitle) !!}
                                {!! Theme::partial('section-title-shape', ['style' => 3]) !!}
                            </span>
                        @endif
                        @if($title)
                            <h3 class="tp-section-title-2">
                                {!! BaseHelper::clean($title) !!}
                            </h3>
                        @endif
                    </div>
                </div>
            </div>
        @endif
        <div class="row">
            <div class="col-xl-12">
                <div class="tp-product-tab-2 tp-tab mb-50 text-center">
                    <nav>
                        <div
                            class="nav nav-tabs justify-content-center"
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
                                    <span class="tp-product-tab-tooltip">0</span>
                                </button>
                            @endforeach
                        </div>
                    </nav>
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
