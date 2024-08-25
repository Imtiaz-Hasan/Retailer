<section class="tp-slider-area p-relative z-index-1 fix">
    <div class="tp-slider-active-5 swiper-container">
        <div class="swiper-wrapper">
            @foreach($sliders as $slider)
                @php
                    $title = $slider->title;
                    $buttonLabel = $slider->getMetaData('button_label', true);
                @endphp

                <div class="tp-slider-item-5 scene tp-slider-height-5 swiper-slide d-flex align-items-center" data-bg-color="#F3F3F3">
                    <div class="tp-slider-shape-5">
                        @foreach(range(1, 4) as $i)
                            @if($shape = $shortcode->{"shape_$i"})
                                <div class="tp-slider-shape-5-{{ $i }}">
                                    {{ RvMedia::image($shape, $slider->title, attributes: ['class' => 'layer', 'data-depth' => '0.2']) }}
                                </div>
                            @endif
                        @endforeach
                    </div>
                    <div class="container">
                        @if($title || $buttonLabel)
                            <div class="row align-items-center">
                                <div class="col-xxl-7 col-xl-7 col-lg-6">
                                    <div class="tp-slider-content-5 p-relative z-index-1">
                                        @if($title)
                                            <h3 class="tp-slider-title-5">
                                                {!! BaseHelper::clean($title) !!}
                                            </h3>
                                        @endif

                                        @if($buttonLabel)
                                            <div class="tp-slider-btn-5">
                                                <a href="{{ $slider->link }}" class="tp-btn-green">
                                                    {!! BaseHelper::clean($buttonLabel) !!}
                                                </a>
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-xxl-5 col-xl-5 col-lg-6">
                                    <div class="tp-slider-thumb-wrapper-5 p-relative">
                                        @if($shape = $shortcode->shape_5)
                                            <div class="tp-slider-thumb-shape-5 one d-none d-sm-block">
                                                {{ RvMedia::image($shape, $slider->title, attributes: ['data-depth' => '0.1', 'class' => 'layer offer']) }}
                                            </div>
                                        @endif
                                        <div class="tp-slider-thumb-5 main-img">
                                            {{ RvMedia::image($slider->image, $slider->title, attributes: ['data-depth' => '0.2', 'class' => 'layer']) }}
                                            <span class="tp-slider-thumb-5-gradient"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="tp-slider-thumb-5 main-img">
                                {{ RvMedia::image($slider->image, $slider->title, attributes: ['data-depth' => '0.2', 'class' => 'layer']) }}
                                <span class="tp-slider-thumb-5-gradient"></span>
                            </div>
                        @endif
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
