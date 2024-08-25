@php
    Theme::layout('full-width');
@endphp

<section class="tp-compare-area pb-120">
    <div class="container">
        @if ($products->isNotEmpty())
            <div class="row">
                <div class="col-xl-12">
                    <div class="tp-compare-table table-responsive text-center">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>{{ __('Product') }}</th>
                                    @foreach ($products as $product)
                                        <td>
                                            <div class="tp-compare-thumb">
                                                {{ RvMedia::image($product->image, $product->name, 'thumb') }}
                                                <h4 class="tp-compare-product-title">
                                                    <a href="{{ $product->url }}">{{ $product->name }}</a>
                                                </h4>

                                                <span @class(['text-danger' => $product->isOutOfStock(), 'text-success' => ! $product->isOutOfStock()])>
                                                    @if ($product->isOutOfStock())
                                                        ({{ __('Out of stock') }})
                                                    @else
                                                        ({{ __('In stock') }})
                                                    @endif
                                                </span>
                                            </div>
                                        </td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <th>{{ __('Description') }}</th>
                                    @foreach ($products as $product)
                                        <td>
                                            <div class="tp-compare-desc">
                                                {!! BaseHelper::clean($product->description) !!}
                                            </div>
                                        </td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <th>{{ __('Price') }}</th>
                                    @foreach ($products as $product)
                                        <td>
                                            <div class="tp-compare-price">
                                                <span>{{ format_price($product->front_sale_price_with_taxes) }}</span>
                                                @if ($product->isOnSale())
                                                    <span class="old-price">{{ format_price($product->price_with_taxes) }}</span>
                                                @endif
                                            </div>
                                        </td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <th>{{ __('SKU') }}</th>
                                    @foreach ($products as $product)
                                        <td>{{ $product->sku ? '#' . $product->sku : '' }}</td>
                                    @endforeach
                                </tr>
                                @foreach ($attributeSets as $attributeSet)
                                    @continue(! $attributeSet->is_comparable)

                                    <tr>
                                        <th>{{ $attributeSet->title }}</th>

                                        @foreach ($products as $product)
                                            <td>
                                                {{ render_product_attributes_view_only($product, $attributeSet) }}
                                            </td>
                                        @endforeach
                                    </tr>
                                @endforeach
                                <tr>
                                    <th>{{ __('Add to cart') }}</th>
                                    @foreach ($products as $product)
                                        <td>
                                            <div class="tp-compare-add-to-cart">
                                                <button
                                                    type="submit"
                                                    class="tp-btn"
                                                    data-bb-toggle="add-to-cart"
                                                    data-url="{{ route('public.cart.add-to-cart') }}"
                                                    data-id="{{ $product->original_product->id }}"
                                                >{{ __('Add to Cart') }}</button>
                                            </div>
                                        </td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <th>{{ __('Rating') }}</th>
                                    @foreach ($products as $product)
                                        <td>
                                            <div class="tp-compare-rating">
                                                <div class="bb-product-rating" style="--rating-size: 80px">
                                                    <span style="width: {{ $product->reviews_avg * 20 }}%"></span>
                                                </div>
                                            </div>
                                        </td>
                                    @endforeach
                                </tr>
                                <tr>
                                    <th>{{ __('Remove') }}</th>
                                    @foreach ($products as $product)
                                        <td>
                                            <div class="tp-compare-remove">
                                                <button data-bb-toggle="remove-from-compare" data-url="{{ route('public.compare.remove', $product->id) }}">
                                                    <i class="fal fa-trash-alt"></i>
                                                </button>
                                            </div>
                                        </td>
                                    @endforeach
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        @else
            <div class="text-center pt-50">
                <h3>{{ __('Your compare list is empty') }}</h3>
                <a href="{{ route('public.products') }}" class="tp-cart-checkout-btn mt-20">{{ __('Continue Shopping') }}</a>
            </div>
        @endif
    </div>
</section>
