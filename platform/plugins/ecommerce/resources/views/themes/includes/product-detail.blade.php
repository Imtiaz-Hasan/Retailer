<div
class="container"
id="product-detail"
>
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-12 mb-30">
        <div class="product-page-image">
            <div
                class="product-image-slider product-image-gallery"
                id="product-image-gallery"
                data-pswp-uid="3"
            >
                @foreach ($productImages as $img)
                    <div class="item">
                        <img
                            data-zoom-image="{{ RvMedia::getImageUrl($img, 'product_detail') }}"
                            src="{{ RvMedia::getImageUrl($img, 'product_detail') }}"
                            alt="{{ $product->name }}"
                        />
                    </div>
                @endforeach
            </div>
        </div>

        <div class="product-image-slider-thumbnails">
            @foreach ($productImages as $thumb)
                <div class="item">
                    <img
                        src="{{ RvMedia::getImageUrl($thumb, 'product') }}"
                        alt="{{ $product->name }}"
                    />
                </div>
            @endforeach
        </div>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-12 mb-30">
        <div class="product-page-content">
            <h2 class="product-title">{{ $product->name }}</h2>
            @if (EcommerceHelper::isReviewEnabled())
                <div class="product-rating">
                    <div
                        class="star-rating"
                        title="Rated {{ $product->reviews_avg }} out of 5"
                        itemprop="reviewRating"
                        itemscope=""
                        itemtype="https://schema.org/Rating"
                    >
                        <span style="width: {{ $product->reviews_avg * 20 }}%"></span>
                    </div>
                    <div class="product-rating-count"><a href="#list-reviews">( <span
                                class="count">{{ $product->reviews_count }}</span>
                            {{ __('Reviews') }} )</a>
                    </div>
                </div>
            @endif
            <div class="product-price">
                @if ($product->front_sale_price !== $product->price)
                    <del>{{ format_price($product->front_sale_price) }}</del>
                    <span>
                        <span
                            class="product-price-text">{{ format_price($product->front_sale_price) }}</span>
                    </span>
                @else
                    <span>
                        <span class="product-price-text">{{ format_price($product->price) }}</span>
                    </span>
                @endif
            </div>

            {!! apply_filters('ecommerce_before_product_description', null, $product) !!}
            <p
                class="product-description"
                id="detail-description"
            >
                {!! $product->description !!}
            </p>
            {!! apply_filters('ecommerce_after_product_description', null, $product) !!}

            <div class="text-warning"></div>
            <div class="row product-filters">
                @if ($product->variations()->count() > 0)
                    {!! render_product_swatches($product, [
                        'selected' => $selectedAttrs,
                    ]) !!}
                @endif
            </div>
            <form class="single-variation-wrap" action="{{ route('public.cart.add-to-cart') }}" method="post">
                @csrf
                {!! apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null) !!}
                <input
                    id="hidden-product-is_out_of_stock"
                    name="product_is_out_of_stock"
                    type="hidden"
                    value="{{ $product->isOutOfStock() }}"
                />
                <input
                    id="hidden-product-id"
                    name="id"
                    type="hidden"
                    value="{{ $product->id }}"
                />
                <div class="product-quantity">
                    <span
                        class="quantity-btn quantityPlus"
                        data-value="+"
                    ></span>
                    <input
                        class="quantity input-lg"
                        name="qty"
                        type="number"
                        value="1"
                        title="Quantity"
                        step="1"
                        min="1"
                        max="20"
                    />
                    <span
                        class="quantity-btn quantityMinus"
                        data-value="-"
                    ></span>
                </div>
                <button
                    class="btn btn-lg btn-black"
                    id="btn-add-cart"
                    type="submit"
                ><i
                        class="fa fa-shopping-bag"
                        aria-hidden="true"
                    ></i>{{ __('Add to cart') }}
                </button>
            </form>
            <div class="product-meta">
                @if ($product->sku)
                    <span>{{ __('SKU') }} : <span
                            class="sku"
                            id="product-sku"
                            itemprop="sku"
                        >{{ $product->sku }}</span></span>
                @endif
                <span>
                    <span
                        id="is-out-of-stock">{{ !$product->isOutOfStock() ? __('In stock') : __('Out of stock') }}</span>
                </span>

                @if (!$product->categories->isEmpty())
                    <span>{{ __('Categories') }} :
                        @foreach ($product->categories as $category)
                            <a href="{{ $category->url }}"> {{ $category->name }}
                                @if (!$loop->last), @endif
                            </a>
                        @endforeach
                    </span>
                @endif
            </div>
        </div>
    </div>
</div>
</div>
