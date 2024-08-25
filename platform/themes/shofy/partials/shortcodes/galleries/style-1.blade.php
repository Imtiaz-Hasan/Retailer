@php
    $title = $shortcode->title;
    $subtitle = $shortcode->subtitle;
@endphp

<div class="tp-instagram-area pb-70">
    <div class="container">
        @if($title)
            <div class="tp-section-title-wrapper mb-50">
                <h3 class="tp-section-title">
                    {!! BaseHelper::clean($title) !!}
                    {!! Theme::partial('section-title-shape') !!}
                </h3>
            </div>
        @endif

        <div class="tp-gallery-slider swiper-container">
            <div class="swiper-wrapper">
                @foreach($galleries as $gallery)
                    <div class="swiper-slide">
                        <div class="tp-instagram-item p-relative z-index-1 fix mb-30 w-img">
                            {{ RvMedia::image($gallery->image, $gallery->name, 'medium') }}
                            <div class="tp-instagram-icon">
                                <a href="{{ $gallery->url }}">
                                    {{ $gallery->name }}
                                </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
