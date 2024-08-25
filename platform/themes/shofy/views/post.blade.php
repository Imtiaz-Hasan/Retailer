@php
    Theme::set('breadcrumbStyle', 'none');
    Theme::layout('full-width');

    $relatedPosts = get_related_posts($post->getKey(), 3);
@endphp

<section @class(['tp-postbox-details-area pt-60', 'pb-120' => $relatedPosts->isEmpty()])>
    <div class="container">
        <div class="row">
            <div class="col-xl-9">
                <div class="tp-postbox-details-top">
                    @if ($post->categories->isNotEmpty())
                        <div class="tp-postbox-details-category">
                            @foreach ($post->categories as $category)
                                <span>
                                    <a href="{{ $category->url }}">{{ $category->name }}</a>@if (!$loop->last), @endif
                                </span>
                            @endforeach
                        </div>
                    @endif
                    <h3 class="tp-postbox-details-title">{{ $post->name }}</h3>
                    <div class="tp-postbox-details-meta mb-50">
                        @if ($post->author)
                            <span data-meta="author">
                                <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M7.4104 8C9.33922 8 10.9028 6.433 10.9028 4.5C10.9028 2.567 9.33922 1 7.4104 1C5.48159 1 3.91797 2.567 3.91797 4.5C3.91797 6.433 5.48159 8 7.4104 8Z"
                                        stroke="currentColor"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    />
                                    <path
                                        d="M13.4102 15.0001C13.4102 12.2911 10.721 10.1001 7.41016 10.1001C4.09933 10.1001 1.41016 12.2911 1.41016 15.0001"
                                        stroke="currentColor"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    />
                                </svg>
                                {{ __('By :name', ['name' => $post->author->name]) }}
                            </span>
                        @endif
                        <span>
                            <svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M15 8.5C15 12.364 11.864 15.5 8 15.5C4.136 15.5 1 12.364 1 8.5C1 4.636 4.136 1.5 8 1.5C11.864 1.5 15 4.636 15 8.5Z"
                                    stroke="currentColor"
                                    stroke-width="1.5"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                />
                                <path d="M10.5972 10.7259L8.42721 9.43093C8.04921 9.20693 7.74121 8.66793 7.74121 8.22693V5.35693" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>
                            {{ $post->created_at->translatedFormat('M d, Y') }}
                        </span>
                        <span>
                            <i class="fa-regular fa-eye"></i>
                            {{ number_format($post->views) }}
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-9 col-lg-8">
                <div class="tp-postbox-details-main-wrapper">
                    <div class="tp-postbox-details-content">
                        {!! BaseHelper::clean($post->content) !!}

                        <div class="tp-postbox-details-share-wrapper">
                            <div class="row">
                                <div class="col-xl-8 col-lg-6">
                                    <div class="tp-postbox-details-tags tagcloud">
                                        <span>{{ __('Tags:') }}</span>
                                        @foreach ($post->tags as $tag)
                                            <a href="{{ $tag->url }}">{{ $tag->name }}</a>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6">
                                    <div class="tp-postbox-details-share text-md-end">
                                        <span>{{ __('Share:') }}</span>
                                        <a href="https://www.facebook.com/sharer/sharer.php?u={{ $post->url }}"><x-core::icon name="ti ti-brand-facebook" /></a>
                                        <a href="https://x.com/intent/tweet?text={{ $post->name }}&url={{ $post->url }}"><x-core::icon name="ti ti-brand-x" /></a>
                                        <a href="https://www.linkedin.com/sharing/share-offsite/?url={{ $post->url }}"><x-core::icon name="ti ti-brand-linkedin" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null, $post) !!}
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4">
                <div class="tp-sidebar-wrapper tp-sidebar-ml--24">
                    {!! dynamic_sidebar('blog_sidebar') !!}
                </div>
            </div>
        </div>
    </div>

    @if ($relatedPosts->isNotEmpty())
        <div class="tp-postbox-related-area pt-115 pb-90 mt-50" data-bg-color="#F4F7F9">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="tp-postbox-related">
                            <h3 class="tp-postbox-related-title">{{ __('Related Articles') }}</h3>

                            <div class="row">
                                @foreach ($relatedPosts as $relatedPost)
                                    <div class="col-md-6 col-lg-4">
                                        @include(Theme::getThemeNamespace('views.partials.post-grid-item'), ['post' => $relatedPost, 'class' => 'tp-blog-grid-style2'])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
</section>
