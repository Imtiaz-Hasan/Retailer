<div class="tp-header-search pl-70">
    <x-plugins-ecommerce::fronts.ajax-search>
        <div class="tp-header-search-wrapper d-flex align-items-center">
            <div class="tp-header-search-box">
                <x-plugins-ecommerce::fronts.ajax-search.input />
            </div>
            <div class="tp-header-search-category">
                <div class="product-category-label">
                    <span>All Categories</span>
                    <x-core::icon name="ti ti-chevron-down" />
                </div>
                <x-plugins-ecommerce::fronts.ajax-search.categories-dropdown />
            </div>
            <div class="tp-header-search-btn">
                <button type="submit">
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M9 17C13.4183 17 17 13.4183 17 9C17 4.58172 13.4183 1 9 1C4.58172 1 1 4.58172 1 9C1 13.4183 4.58172 17 9 17Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M19 19L14.65 14.65" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
            </div>
        </div>
    </x-plugins-ecommerce::fronts.ajax-search>
</div>

