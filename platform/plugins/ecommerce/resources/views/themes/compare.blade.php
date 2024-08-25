<section class="mt-60 mb-60">
    <div class="container">
        <div class="row">
            <div class="col-12">
                @if ($products->count())
                    <div class="table-responsive table__compare">
                        <table class="table text-center">
                            <tbody>
                                <tr class="pr_image">
                                    <td class="text-muted font-md fw-600">{{ __('Preview') }}</td>
                                    @foreach ($products as $product)
                                        <td class="row_img">
                                            <a href="{{ $product->original_product->url }}"><img
                                                    src="{{ RvMedia::getImageUrl($product->image, 'thumb', false, RvMedia::getDefaultImage()) }}"
                                                    alt="{{ $product->name }}"
                                                ></a>
                                        </td>
                                    @endforeach
                                </tr>
                                <tr class="pr_title">
                                    <td class="text-muted font-md fw-600">{{ __('Name') }}</td>

                                    @foreach ($products as $product)
                                        <td class="product_name">
                                            <h5>
                                                <a href="{{ $product->original_product->url }}">{{ $product->name }}</a>
                                            </h5>

                                            @if (is_plugin_active('marketplace') && $product->original_product->store->id)
                                                <p class="d-block mb-0">
                                                    <small>
                                                        <span>{{ __('Sold by') }}: </span>
                                                        <a href="{{ $product->original_product->store->url }}">{{ $product->original_product->store->name }}</a>
                                                    </small>
                                                </p>
                                            @endif
                                        </td>
                                    @endforeach
                                </tr>
                                <tr class="pr_price">
                                    <td class="text-muted font-md fw-600">{{ __('Price') }}</td>

                                    @foreach ($products as $product)
                                        <td class="product_price">
                                            <span
                                                class="price">{{ format_price($product->front_sale_price_with_taxes) }}</span>
                                            @if ($product->front_sale_price !== $product->price)
                                                <del>{{ format_price($product->price_with_taxes) }} </del>
                                                <small>({{ get_sale_percentage($product->price, $product->front_sale_price) }})</small>
                                            @endif
                                        </td>
                                    @endforeach
                                </tr>
                                @if (EcommerceHelper::isReviewEnabled())
                                    <tr class="pr_rating">
                                        <td class="text-muted font-md fw-600">{{ __('Rating') }}</td>
                                        @foreach ($products as $product)
                                            <td>
                                                <div class="rating_wrap">
                                                    <div class="rating">
                                                        <div
                                                            class="product_rate"
                                                            style="width: {{ $product->reviews_avg * 20 }}%"
                                                        ></div>
                                                    </div>
                                                    <span class="rating_num">({{ $product->reviews_count }})</span>
                                                </div>
                                            </td>
                                        @endforeach
                                    </tr>
                                @endif

                                <tr class="description">
                                    <td class="text-muted font-md fw-600">{{ __('Description') }}</td>
                                    @foreach ($products as $product)
                                        <td class="row_text font-xs">
                                            <p>
                                                {!! BaseHelper::clean($product->description) !!}
                                            </p>
                                        </td>
                                    @endforeach
                                </tr>

                                @foreach ($attributeSets as $attributeSet)
                                    @if ($attributeSet->is_comparable)
                                        <tr>
                                            <td class="text-muted font-md fw-600">
                                                {{ $attributeSet->title }}
                                            </td>

                                            @foreach ($products as $product)
                                                <td>
                                                    {{ render_product_attributes_view_only($product, $attributeSet) }}
                                                </td>
                                            @endforeach
                                        </tr>
                                    @endif
                                @endforeach

                                @if (EcommerceHelper::isCartEnabled())
                                    <tr class="pr_add_to_cart">
                                        <td class="text-muted font-md fw-600">{{ __('Buy now') }}</td>
                                        @foreach ($products as $product)
                                            <td class="row_btn">
                                                <a
                                                    class="btn btn-rounded btn-sm add-to-cart-button"
                                                    data-id="{{ $product->id }}"
                                                    data-url="{{ route('public.cart.add-to-cart') }}"
                                                    href="#"
                                                >
                                                    <x-core::icon name="ti ti-shopping-cart" class="me-1" /> {{ __('Add To Cart') }}
                                                </a>
                                            </td>
                                        @endforeach
                                    </tr>
                                @endif

                                <tr class="pr_remove text-muted">
                                    <td class="text-muted font-md fw-600">&nbsp;</td>
                                    @foreach ($products as $product)
                                        <td class="row_remove">
                                            <a
                                                class="js-remove-from-compare-button"
                                                data-url="{{ route('public.compare.remove', $product->id) }}"
                                                href="#"
                                            >
                                                <x-core::icon name="ti ti-trash" class="me-1" />
                                                <span>{{ __('Remove') }}</span>
                                            </a>
                                        </td>
                                    @endforeach
                                </tr>

                            </tbody>
                        </table>
                    </div>
            </div>
        @else
            <p class="text-center">{{ __('No products in compare list!') }}</p>
            @endif
        </div>
    </div>
</section>
