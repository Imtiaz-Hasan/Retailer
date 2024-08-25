<section class="tp-blog-area pt-50 pb-75">
    <div class="container">
        <div class="row align-items-end">
            <div class="col-xl-4 col-md-6">
                @if($title = $shortcode->title)
                    <div class="tp-section-title-wrapper mb-50">
                        <h3 class="tp-section-title">
                            {!! BaseHelper::clean($title) !!}
                            {!! Theme::partial('section-title-shape') !!}
                        </h3>
                    </div>
                @endif
            </div>
            <div class="col-xl-8 col-md-6">
                @if(($buttonLabel = $shortcode->button_label) && ($buttonUrl = $shortcode->button_url ?: get_blog_page_url()))
                    <div class="tp-blog-more-wrapper d-flex justify-content-md-end">
                        <div class="tp-blog-more mb-50 text-md-end">
                            <a href="{{ $buttonUrl }}" class="tp-btn tp-btn-2 tp-btn-blue">
                                {!! BaseHelper::clean($buttonLabel) !!}
                                <svg width="17" height="14" viewBox="0 0 17 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M16 6.99976L1 6.99976" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M9.9502 0.975414L16.0002 6.99941L9.9502 13.0244" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                            <span class="tp-blog-more-border"></span>
                        </div>
                    </div>
                @endif
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="tp-blog-main-slider">
                    <div class="tp-blog-main-slider-active swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($posts as $post)
                                <div class="tp-blog-item mb-30 swiper-slide">
                                    <div class="tp-blog-thumb p-relative fix">
                                        <a href="{{ $post->url }}">
                                            {{ RvMedia::image($post->image, $post->name) }}
                                        </a>
                                        <div class="tp-blog-meta tp-blog-meta-date">
                                            <span>{{ $post->created_at->translatedFormat('M d, Y') }}</span>
                                        </div>
                                    </div>
                                    <div class="tp-blog-content">
                                        <h3 class="tp-blog-title text-truncate">
                                            <a href="{{ $post->url }}" title="{{ $post->name }}">
                                                {!! BaseHelper::clean($post->name) !!}
                                            </a>
                                        </h3>

                                        @if($post->firstCategory)
                                            <div class="tp-blog-tag">
                                                <span><i class="fa-light fa-tag"></i></span>
                                                <a href="{{ $post->firstCategory->url }}">{{ $post->firstCategory->name }}</a>
                                            </div>
                                        @endif

                                        <p>{{ Str::words($post->description, 20) }}</p>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
