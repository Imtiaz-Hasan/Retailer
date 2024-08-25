@php
    $colorMode ??= 'light';
    $showUserMenu ??= false;
@endphp

<div @class(['p-relative z-index-11 tp-header-top-border d-none d-md-block', 'tp-header-top-2' => $colorMode === 'light', 'tp-header-top black-bg' => $colorMode !== 'light'])>
    <div @class([$headerTopClass ?? null])>
        <div class="d-flex flex-wrap align-items-center justify-content-between">
            <div class="position-relative">
                {!! apply_filters('announcement_display_html', null) !!}
            </div>
            <div>
                <div @class(['tp-header-top-right d-flex align-items-center justify-content-end', 'tp-header-top-black' => $colorMode === 'light'])>
                    <div class="tp-header-top-menu d-flex align-items-center justify-content-end">
                        {!! Theme::partial('language-switcher', ['type' => 'desktop']) !!}
                        @if (is_plugin_active('ecommerce'))
                            <div class="tp-header-top-menu-item tp-header-currency">
                                <span class="tp-header-currency-toggle" id="tp-header-currency-toggle">{{ get_application_currency()->title }}</span>
                                {!! Theme::partial('currency-switcher') !!}
                            </div>
                        @endif

                        @if ($showUserMenu && is_plugin_active('ecommerce'))
                            @auth('customer')
                                <div class="tp-header-top-menu-item tp-header-setting">
                                    <span class="tp-header-setting-toggle" id="tp-header-setting-toggle">{{ auth('customer')->user()->name }}</span>
                                    <ul>
                                        <li>
                                            <a href="{{ route('customer.overview') }}">{{ __('My Profile') }}</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('customer.orders') }}">{{ __('Orders') }}</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('customer.logout') }}">{{ __('Logout') }}</a>
                                        </li>
                                    </ul>
                                </div>
                            @else
                                <div class="tp-header-top-menu-item tp-header-setting">
                                    <a href="{{ route('customer.login') }}">{{ __('Login') }}</a>
                                </div>
                                <div class="tp-header-top-menu-item tp-header-setting">
                                    <a href="{{ route('customer.register') }}">{{ __('Register') }}</a>
                                </div>
                            @endauth
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
