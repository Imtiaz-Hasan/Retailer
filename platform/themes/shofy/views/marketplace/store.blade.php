@php
    Theme::set('breadcrumbStyle', 'none');
    Theme::layout('full-width');

    $categories = ProductCategoryHelper::getProductCategoriesWithUrl();
    $categoriesRequest = (array) request()->input('categories', []);
    $categoryId = Arr::get($categoriesRequest, 0);
    $coverImage = $store->getMetaData('background', true);
@endphp

<div class="bb-shop-detail pt-60 pb-120">
    <div class="container">
        @include(MarketplaceHelper::viewPath('includes.store-detail-banner'))

        <div class="row position-relative">
            <div class="col-xl-3 col-lg-4">
                @include(MarketplaceHelper::viewPath('includes.store-filters'))
            </div>
            <div class="col-xl-9 col-lg-8">
                @include(EcommerceHelper::viewPath('includes.product-filters-top'))

                <div class="bb-product-items-wrapper">
                    @include(MarketplaceHelper::viewPath('stores.items'))
                </div>
            </div>
        </div>
    </div>
</div>
