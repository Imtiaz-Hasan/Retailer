@php
    $breadcrumbStyle = Theme::get('breadcrumbStyle', theme_option('breadcrumb_style', 'align-start'));
    $breadcrumbBackground = RvMedia::getImageUrl(Theme::get('breadcrumbBackground', theme_option('breadcrumb_background_image')));
    $breadcrumbBackgroundColor = theme_option('breadcrumb_background_color');
    $breadcrumbHeight = theme_option('breadcrumb_height');
    $breadcrumbHeight = is_numeric($breadcrumbHeight) ? "{$breadcrumbHeight}px" : $breadcrumbHeight;
@endphp

@if($breadcrumbStyle !== 'none')
    <section
        @class([
            'breadcrumb__area include-bg',
            'pt-60 pb-60' => $breadcrumbStyle !== 'without-title' && empty($breadcrumbHeight),
            'breadcrumb__style-2 include-bg' => $breadcrumbStyle === 'without-title',
            'pt-30 pb-30' => $breadcrumbStyle === 'without-title' && empty($breadcrumbHeight),
            'text-center' => $breadcrumbStyle === 'align-center',
            'text-start' => $breadcrumbStyle === 'align-start',
            'breadcrumb__padding' => $breadcrumbStyle === 'full-width',
        ])
        @style(["background-image: url($breadcrumbBackground)" => $breadcrumbBackground && $breadcrumbStyle !== 'without-title', "background-color: $breadcrumbBackgroundColor" => $breadcrumbBackgroundColor, "display: flex; align-items: center; height: $breadcrumbHeight" => $breadcrumbHeight])
    >
        <div @class(['container' => $breadcrumbStyle !== 'full-width', 'container-fluid' => $breadcrumbStyle === 'full-width'])>
            <div class="breadcrumb__content p-relative z-index-1">
                @if($breadcrumbStyle !== 'without-title')
                    <h3 class="breadcrumb__title">{{ Theme::get('pageTitle') ?: SeoHelper::getTitle() }}</h3>
                @endif
                <div class="breadcrumb__list">
                    @foreach(Theme::breadcrumb()->getCrumbs() as $crumb)
                        <span>
                                    @if($loop->last)
                                {!! BaseHelper::clean($crumb['label']) !!}
                            @else
                                <a href="{{ $crumb['url'] }}">{!! BaseHelper::clean($crumb['label']) !!}</a>
                            @endif
                                </span>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endif
