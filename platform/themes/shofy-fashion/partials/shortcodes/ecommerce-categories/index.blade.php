@switch($shortcode->style)
    @case('grid')
        <section class="tp-category-area">
            <div class="container">
                <div class="row">
                    @foreach($categories as $category)
                        <div class="col-lg-4 col-sm-6">
                            <div
                                class="tp-category-main-box mb-25 p-relative fix"
                                @if ($shortcode->background_color)
                                    data-bg-color="{{ $shortcode->background_color }}"
                                @endif
                            >
                                <a href="{{ $category->url }}" title="{{ $category->name }}">
                                    <div
                                        class="tp-category-main-thumb include-bg transition-3"
                                        @if($category->image)
                                            data-background="{{ RvMedia::getImageUrl($category->image) }}"
                                        @endif
                                    ></div>
                                </a>
                                <div class="tp-category-main-content">
                                    <h3 class="tp-category-main-title">
                                        <a href="{{ $category->url }}">{{ $category->name }}</a>
                                    </h3>
                                    <span class="tp-category-main-item">
                                        @if ($category->products_count === 1)
                                        {{ __('1 product') }}
                                    @else
                                        {{ __(':count products', ['count' => number_format($category->products_count)]) }}
                                    @endif
                                </span>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        @break

    @case('slider')
        <section class="tp-category-area pb-95 pt-95">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="tp-section-title-wrapper-2 text-center mb-50">
                            @if($description = $shortcode->description)
                                <span class="tp-section-title-pre-2">
                                    {{ $description }}
                                    {!! Theme::partial('section-title-shape', ['style' => 3]) !!}
                                </span>
                            @endif
                            @if($title = $shortcode->title)
                                <h3 class="tp-section-title-2">{{ $title }}</h3>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="tp-category-slider-2">
                            <div class="tp-category-slider-active-2 swiper-container mb-50">
                                <div class="swiper-wrapper">
                                    @foreach ($categories as $category)
                                        <div class="tp-category-item-2 p-relative z-index-1 text-center swiper-slide">
                                            <div class="tp-category-thumb-2">
                                                <a href="{{ $category->url }}">
                                                    {{ RvMedia::image($category->image, $category->name, 'medium', useDefaultImage: true) }}
                                                </a>
                                            </div>
                                            <div class="tp-category-content-2">
                                                <span>
                                                    @if ($category->products_count === 1)
                                                        {{ __('1 product') }}
                                                    @else
                                                        {{ __(':count products', ['count' => number_format($category->products_count)]) }}
                                                    @endif
                                                </span>
                                                <h3 class="tp-category-title-2">
                                                    <a href="{{ $category->url }}">{{ $category->name }}</a>
                                                </h3>
                                                <div class="tp-category-btn-2">
                                                    <a href="{{ $category->url }}" class="tp-btn tp-btn-border">
                                                        {{ __('Shop now') }}
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="swiper-scrollbar tp-swiper-scrollbar tp-swiper-scrollbar-drag"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @break
@endswitch
