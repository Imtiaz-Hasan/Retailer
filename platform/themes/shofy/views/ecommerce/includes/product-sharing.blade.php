<div class="tp-product-details-social">
    <span>{{ __('Share:') }}</span>
    <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}" target="_blank">
        <x-core::icon name="ti ti-brand-facebook" />
    </a>
    <a href="https://twitter.com/intent/tweet?url={{ urlencode(url()->current()) }}&text={{ urlencode(strip_tags(SeoHelper::getDescription())) }}" target="_blank">
        <x-core::icon name="ti ti-brand-x" />
    </a>
    <a href="https://www.linkedin.com/shareArticle?mini=true&url={{ urlencode(url()->current()) }}&summary={{ rawurldecode(strip_tags(SeoHelper::getDescription())) }}" target="_blank">
        <x-core::icon name="ti ti-brand-linkedin" />
    </a>
    <a href="https://wa.me/?text={{ urlencode(url()->current()) }}" target="_blank">
        <x-core::icon name="ti ti-brand-whatsapp" />
    </a>
</div>
