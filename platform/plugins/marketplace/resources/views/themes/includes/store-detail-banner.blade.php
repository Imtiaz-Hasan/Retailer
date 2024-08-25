<div class="bb-shop-banner" @if ($coverImage) style="background-image: url('{{ RvMedia::getImageUrl($coverImage) }}');" @endif>
    <div class="bg-white z-1 w-100 rounded p-3 bb-shop-banner-content">
        <div class="d-flex justify-content-between align-items-end">
            <div class="d-flex align-items-start gap-4">
                {{ RvMedia::image($store->logo, $store->name, useDefaultImage: true, attributes: ['class' => 'bb-shop-banner-logo']) }}

                <div class="bb-shop-banner-info">
                    <h2 class="bb-shop-banner-name">{{ $store->name }}</h2>

                    @if (EcommerceHelper::isReviewEnabled())
                        <div class="d-flex align-items-center gap-2 bb-shop-banner-rating">
                            <div class="bb-product-rating" style="--bb-rating-size: 80px">
                                <span style="width: {{ $store->reviews()->avg('star') * 20 }}%"></span>
                            </div>

                            <small>{{ __('(:count reviews)', ['count' => number_format($store->reviews->count())]) }}</small>
                        </div>
                    @endif

                    <p class="bb-shop-banner-address">
                        <x-core::icon name="ti ti-map-pin" />
                        {{ $store->full_address }}
                    </p>

                    @if (!MarketplaceHelper::hideStorePhoneNumber() && $store->phone)
                        <p class="bb-shop-banner-phone">
                            <x-core::icon name="ti ti-phone" />
                            <a href="tel:{{ $store->phone }}">{{ $store->phone }}</a>
                        </p>
                    @endif

                    @if (!MarketplaceHelper::hideStoreEmail() && $store->email)
                        <p class="bb-shop-banner-address">
                            <x-core::icon name="ti ti-mail" />
                            <a href="mailto:{{ $store->email }}">{{ $store->email }}</a>
                        </p>
                    @endif
                </div>
            </div>
            @if (!MarketplaceHelper::hideStoreSocialLinks() && ($socials = $store->getMetaData('socials', true)))
                <ul class="d-flex list-unstyled gap-2 bb-shop-banner-socials">
                    @foreach ((array) ['facebook', 'instagram', 'x', 'youtube', 'linkedin'] as $social)
                        @continue(empty($link = Arr::get($socials, $social)))

                        <li>
                            <a href="{{ $link }}" target="_blank"><x-core::icon :name="'ti ti-brand-' . $social" /></a>
                        </li>
                    @endforeach

                    @if ($twitter = Arr::get($socials, 'twitter'))
                        <li>
                            <a href="{{ $twitter }}" target="_blank"><x-core::icon name="ti ti-brand-x" /></a>
                        </li>
                    @endif
                </ul>
            @endif
        </div>
    </div>
</div>
